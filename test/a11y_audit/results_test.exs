defmodule A11yAudit.ResultsTest do
  use ExUnit.Case

  describe "from_json" do
    test "example results for duckduckgo.com" do
      path = Path.expand("../fixtures/axe_core_results_duckduckgo.json", __DIR__)
      json_string = File.read!(path)
      map = Jason.decode!(json_string)

      assert A11yAudit.Results.from_json(map) ==
               A11yAudit.Fixtures.AxeCoreResultsDuckDuckGo.expected_value()
    end

    test "example results for vox.com" do
      path = Path.expand("../fixtures/axe_core_results_vox.json", __DIR__)
      json_string = File.read!(path)
      map = Jason.decode!(json_string)

      assert A11yAudit.Results.from_json(map) ==
               A11yAudit.Fixtures.AxeCoreResultsVox.expected_value()
    end
  end
end
