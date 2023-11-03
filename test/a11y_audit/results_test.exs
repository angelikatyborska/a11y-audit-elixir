defmodule A11yAudit.ResultsTest do
  use ExUnit.Case

  describe "from_json" do
    test "xxx" do
      path = Path.expand("../fixtures/axe-core-results-duckduckgo.json", __DIR__)
      json_string = File.read!(path)
      map = Jason.decode!(json_string)

      assert A11yAudit.Results.from_json(map) ==
               A11yAudit.Fixtures.AxeCoreResultsDuckDuckGo.expected_value()
    end
  end
end
