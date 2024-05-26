defmodule DemoWeb.HomeWallabyTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "valid page with no accessibility errors", %{session: session} do
    session
    |> visit("/valid")
    |> assert_has(Query.css("h1", text: "Angelika's Star Trek series ranking"))
    |> assert_has(Query.css("li", count: 9))
  end

  feature "invalid page with accessibility errors", %{session: session} do
    session
    |> visit("/invalid")
    |> assert_has(Query.css("h4", text: "Angelika's Star Trek series ranking"))
    |> assert_has(Query.css("li", count: 9))
  end

  feature "dynamic invalid page with accessibility errors that only happen after interaction", %{
    session: session
  } do
    session
    |> visit("/dynamic_invalid")
    |> assert_has(Query.css("h1", text: "Angelika's Star Trek series ranking"))
    |> assert_has(Query.css("li", count: 9))
    |> click(Query.css("#paint-black-button"))
    |> find(Query.css("article"), fn article ->
      assert Element.attr(article, "style") == "background-color: rgb(34, 34, 34);"
    end)
  end
end
