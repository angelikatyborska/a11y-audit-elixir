defmodule A11yAudit.AssertionsTest do
  use ExUnit.Case

  alias A11yAudit.Results
  alias A11yAudit.Results.Violation
  alias A11yAudit.Results.Node
  alias A11yAudit.Assertions

  describe "assert_no_violations" do
    test "no violations" do
      assert Assertions.assert_no_violations(%Results{
               url: "url",
               test_engine: "3",
               violations: []
             }) == nil
    end

    test "one violation" do
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
                   Expected page to have no accessibility violations, but got 1 violation.

                   \e[33m\e[7m moderate \e[0m help
                   \e[33m┃\e[0m Learn more: help_url

                   """
      end
    end

    test "some violations" do
      try do
        Assertions.assert_no_violations(%Results{
          url: "url",
          test_engine: "3",
          violations: [
            %Violation{
              id: "id 1",
              description: "description 1",
              help: "help 1",
              help_url: "help_url 1",
              impact: :moderate,
              nodes: []
            },
            %Violation{
              id: "id 2",
              description: "description 2",
              help: "help 2",
              help_url: "help_url 2",
              impact: :serious,
              nodes: []
            }
          ]
        })

        raise "this line should not be reached"
      rescue
        error in [ExUnit.AssertionError] ->
          assert error.message ==
                   """
                   Expected page to have no accessibility violations, but got 2 violations.

                   \e[31m\e[7m serious \e[0m help 2
                   \e[31m┃\e[0m Learn more: help_url 2

                   \e[33m\e[7m moderate \e[0m help 1
                   \e[33m┃\e[0m Learn more: help_url 1

                   """
      end
    end

    test "accepts opts" do
      try do
        Assertions.assert_no_violations(
          %Results{
            url: "url",
            test_engine: "3",
            violations: [
              %Violation{
                id: "id 1",
                description: "description 1",
                help: "help 1",
                help_url: "help_url 1",
                impact: :moderate,
                nodes: []
              },
              %Violation{
                id: "id 2",
                description: "description 2",
                help: "help 2",
                help_url: "help_url 2",
                impact: :serious,
                nodes: [%Node{html: "<h1>Hello</h1>"}]
              }
            ]
          },
          violations_print_limit: 1,
          node_html_print_limit: 3
        )

        raise "this line should not be reached"
      rescue
        error in [ExUnit.AssertionError] ->
          assert error.message ==
                   """
                   Expected page to have no accessibility violations, but got 2 violations.

                   \e[31m\e[7m serious \e[0m help 2
                   \e[31m┃\e[0m Learn more: help_url 2
                   \e[31m┃\e[0m\n\e[31m┃\e[0m There is 1 node with this violation:
                   \e[31m┃\e[0m\n\e[31m┃\e[0m 1. <h1...

                   ... and 1 more violation.
                   """
      end
    end

    defmodule MyViolationFilter do
      @behaviour A11yAudit.ViolationFilter

      def exclude_violation?(%{impact: impact}) do
        impact in [:minor, :moderate]
      end
    end

    test "accepts a filter" do
      try do
        Assertions.assert_no_violations(
          %Results{
            url: "url",
            test_engine: "3",
            violations: [
              %Violation{
                id: "id 1",
                description: "description 1",
                help: "help 1",
                help_url: "help_url 1",
                impact: :moderate,
                nodes: []
              },
              %Violation{
                id: "id 2",
                description: "description 2",
                help: "help 2",
                help_url: "help_url 2",
                impact: :serious,
                nodes: []
              }
            ]
          },
          filter: MyViolationFilter
        )

        raise "this line should not be reached"
      rescue
        error in [ExUnit.AssertionError] ->
          assert error.message ==
                   """
                   Expected page to have no accessibility violations, but got 1 violation.

                   \e[31m\e[7m serious \e[0m help 2
                   \e[31m┃\e[0m Learn more: help_url 2

                   """
      end
    end
  end
end
