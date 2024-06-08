defmodule DemoWeb.PagesTest do
  use ExUnit.Case
  use Hound.Helpers

  hound_session(
    driver: %{chromeOptions: %{"args" => ["--headless", "--disable-gpu"]}},
    additional_capabilities: %{browserName: "chrome"}
  )

  test "valid page with no accessibility errors" do
    navigate_to("#{DemoWeb.Endpoint.url()}/valid")

    heading = find_element(:css, "h1")
    assert inner_text(heading) == "Angelika's Star Trek series ranking"

    list_items = find_all_elements(:css, "li")
    assert Enum.count(list_items) == 9

    A11yAudit.Hound.assert_no_violations()
  end

  test "invalid page with no accessibility errors" do
    navigate_to("#{DemoWeb.Endpoint.url()}/invalid")

    heading = find_element(:css, "h4")
    assert inner_text(heading) == "Angelika's Star Trek series ranking"

    list_items = find_all_elements(:css, "li")
    assert Enum.count(list_items) == 9

    A11yAudit.Hound.assert_no_violations()
  end

  test "dynamic invalid page with accessibility errors that only happen after interaction" do
    navigate_to("#{DemoWeb.Endpoint.url()}/dynamic_invalid")

    heading = find_element(:css, "h1")
    assert inner_text(heading) == "Angelika's Star Trek series ranking"

    list_items = find_all_elements(:css, "li")
    assert Enum.count(list_items) == 9

    button = find_element(:css, "#paint-black-button")
    click(button)

    article = find_element(:css, "article")
    assert attribute_value(article, "style") == "background-color: rgb(34, 34, 34);"

    A11yAudit.Hound.assert_no_violations(nodes_per_violation_print_limit: 3)
  end
end
