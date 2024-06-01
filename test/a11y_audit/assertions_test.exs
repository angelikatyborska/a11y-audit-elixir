defmodule A11yAudit.AssertionsTest do
  use ExUnit.Case

  alias A11yAudit.Results
  alias A11yAudit.Results.Violation
  alias A11yAudit.Assertions

  describe "assert_no_violations" do
    test "no violations" do
      assert Assertions.assert_no_violations(%Results{
               url: "url",
               test_engine: "3",
               violations: []
             }) == nil
    end

    test "some violations" do
      try do
        Assertions.assert_no_violations(%Results{
          url: "url",
          test_engine: "3",
          violations: [
            %Violation{
              id: "id",
              description: "description",
              help: "help",
              help_url: "help_url",
              impact: :moderate,
              nodes: []
            }
          ]
        })

        raise "this line should not be reached"
      rescue
        error in [ExUnit.AssertionError] ->
          assert error.message ==
                   """
                   Expected page to have no accessibility violations, but got 1 violations.
                   \e[33m\e[7m moderate \e[0m help
                   \e[33m┃\e[0m Learn more: help_url

                   """
      end
    end
  end
end
