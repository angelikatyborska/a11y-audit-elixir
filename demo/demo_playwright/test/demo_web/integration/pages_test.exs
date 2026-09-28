defmodule DemoWeb.PagesTest do
  use PhoenixTest.Playwright.Case, async: true

  test "valid page with no accessibility errors", %{conn: conn} do
    conn
    |> visit("/valid")
    |> assert_has("h1", text: "Angelika's Star Trek series ranking")
    |> assert_has("li", count: 9)
    |> A11yAudit.PhoenixTest.Playwright.assert_no_violations()
  end

  test "invalid page with accessibility errors", %{conn: conn} do
    conn
    |> visit("/invalid")
    |> assert_has("h4", text: "Angelika's Star Trek series ranking")
    |> assert_has("li", count: 9)
    |> A11yAudit.PhoenixTest.Playwright.assert_no_violations()
  end

  test "dynamic invalid page with accessibility errors that only happen after interaction", %{
    conn: conn
  } do
    conn
    |> visit("/dynamic_invalid")
    |> assert_has("h1", text: "Angelika's Star Trek series ranking")
    |> assert_has("li", count: 9)
    |> click("#paint-black-button")
    |> assert_has("article[style='background-color: rgb(34, 34, 34);']")
    |> A11yAudit.PhoenixTest.Playwright.assert_no_violations(nodes_per_violation_print_limit: 3)
  end
end
