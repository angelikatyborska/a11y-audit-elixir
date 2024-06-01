defmodule A11yAudit.FormatterTest do
  use ExUnit.Case

  alias A11yAudit.Formatter
  alias A11yAudit.Results
  alias A11yAudit.Results.Violation
  alias A11yAudit.Results.Node

  describe "format_results" do
    defp violation(id \\ "1", impact \\ :critical) do
      %Violation{
        id: id,
        description: "description",
        help: "help #{id}",
        help_url: "help_url #{id}",
        impact: impact,
        nodes: [%Node{html: "<div>x</div>"}]
      }
    end

    test "prints 1 violation" do
      results = %Results{test_engine: "1", url: "/", violations: [violation()]}

      assert Formatter.format_results(results) ===
               """
               \e[35m\e[7m critical \e[0m help 1
               \e[35m┃\e[0m Learn more: help_url 1
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               """
    end

    test "prints 2 violations" do
      results = %Results{test_engine: "1", url: "/", violations: [violation(1), violation(2)]}

      assert Formatter.format_results(results) ===
               """
               \e[35m\e[7m critical \e[0m help 1
               \e[35m┃\e[0m Learn more: help_url 1
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 2
               \e[35m┃\e[0m Learn more: help_url 2
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               """
    end

    test "prints 6 violations" do
      results = %Results{
        test_engine: "1",
        url: "/",
        violations: [
          violation(1),
          violation(2),
          violation(3),
          violation(4),
          violation(5),
          violation(6)
        ]
      }

      assert Formatter.format_results(results) ===
               """
               \e[35m\e[7m critical \e[0m help 1
               \e[35m┃\e[0m Learn more: help_url 1
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 2
               \e[35m┃\e[0m Learn more: help_url 2
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 3
               \e[35m┃\e[0m Learn more: help_url 3
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 4
               \e[35m┃\e[0m Learn more: help_url 4
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 5
               \e[35m┃\e[0m Learn more: help_url 5
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               ... and 1 more violation.
               """
    end

    test "prints 7 violations" do
      results = %Results{
        test_engine: "1",
        url: "/",
        violations: [
          violation(1),
          violation(2),
          violation(3),
          violation(4),
          violation(5),
          violation(7),
          violation(6)
        ]
      }

      assert Formatter.format_results(results) ===
               """
               \e[35m\e[7m critical \e[0m help 1
               \e[35m┃\e[0m Learn more: help_url 1
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 2
               \e[35m┃\e[0m Learn more: help_url 2
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 3
               \e[35m┃\e[0m Learn more: help_url 3
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 4
               \e[35m┃\e[0m Learn more: help_url 4
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[35m\e[7m critical \e[0m help 5
               \e[35m┃\e[0m Learn more: help_url 5
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               ... and 2 more violations.
               """
    end

    test "orders violations per impact" do
      results = %Results{
        test_engine: "1",
        url: "/",
        violations: [
          violation(1, :moderate),
          violation(2, :serious),
          violation(3, :minor),
          violation(4, :critical),
          violation(5, :serious)
        ]
      }

      assert Formatter.format_results(results) ===
               """
               \e[35m\e[7m critical \e[0m help 4
               \e[35m┃\e[0m Learn more: help_url 4
               \e[35m┃\e[0m
               \e[35m┃\e[0m There is 1 node with this violation:
               \e[35m┃\e[0m
               \e[35m┃\e[0m 1. <div>x</div>

               \e[31m\e[7m serious \e[0m help 2
               \e[31m┃\e[0m Learn more: help_url 2
               \e[31m┃\e[0m
               \e[31m┃\e[0m There is 1 node with this violation:
               \e[31m┃\e[0m
               \e[31m┃\e[0m 1. <div>x</div>

               \e[31m\e[7m serious \e[0m help 5
               \e[31m┃\e[0m Learn more: help_url 5
               \e[31m┃\e[0m
               \e[31m┃\e[0m There is 1 node with this violation:
               \e[31m┃\e[0m
               \e[31m┃\e[0m 1. <div>x</div>

               \e[33m\e[7m moderate \e[0m help 1
               \e[33m┃\e[0m Learn more: help_url 1
               \e[33m┃\e[0m
               \e[33m┃\e[0m There is 1 node with this violation:
               \e[33m┃\e[0m
               \e[33m┃\e[0m 1. <div>x</div>

               \e[37m\e[7m minor \e[0m help 3
               \e[37m┃\e[0m Learn more: help_url 3
               \e[37m┃\e[0m
               \e[37m┃\e[0m There is 1 node with this violation:
               \e[37m┃\e[0m
               \e[37m┃\e[0m 1. <div>x</div>

               """
    end
  end

  describe "format_violation" do
    defp violation_with_nodes(nodes) do
      %Violation{
        id: "violation-id-123",
        description: "description",
        help: "help",
        help_url: "help_url",
        impact: :moderate,
        nodes: nodes
      }
    end

    test "prints 1 node" do
      nodes = [
        %Node{html: "<ul><div>x</div></ul>"}
      ]

      assert Formatter.format_violation(violation_with_nodes(nodes)) ===
               """
               \e[33m\e[7m moderate \e[0m help
               \e[33m┃\e[0m Learn more: help_url
               \e[33m┃\e[0m
               \e[33m┃\e[0m There is 1 node with this violation:
               \e[33m┃\e[0m
               \e[33m┃\e[0m 1. <ul><div>x</div></ul>

               """
    end

    test "prints 0 nodes" do
      nodes = []

      assert Formatter.format_violation(violation_with_nodes(nodes)) ===
               """
               \e[33m\e[7m moderate \e[0m help
               \e[33m┃\e[0m Learn more: help_url

               """
    end

    test "prints 2 nodes" do
      nodes = [
        %Node{html: "<ul>\n    <div>sdf</div>\n  </ul>"},
        %Node{html: "<ul><div>x</div></ul>"}
      ]

      assert Formatter.format_violation(violation_with_nodes(nodes)) ===
               """
               \e[33m\e[7m moderate \e[0m help
               \e[33m┃\e[0m Learn more: help_url
               \e[33m┃\e[0m
               \e[33m┃\e[0m There are 2 nodes with this violation:
               \e[33m┃\e[0m
               \e[33m┃\e[0m 1. <ul>\\n    <div>sdf</div>\\n  </ul>
               \e[33m┃\e[0m 2. <ul><div>x</div></ul>

               """
    end

    test "prints 6 nodes" do
      nodes = [
        %Node{html: "<div>1</div>"},
        %Node{html: "<div>2</div>"},
        %Node{html: "<div>3</div>"},
        %Node{html: "<div>4</div>"},
        %Node{html: "<div>5</div>"},
        %Node{html: "<div>6</div>"}
      ]

      assert Formatter.format_violation(violation_with_nodes(nodes)) ===
               """
               \e[33m\e[7m moderate \e[0m help
               \e[33m┃\e[0m Learn more: help_url
               \e[33m┃\e[0m
               \e[33m┃\e[0m There are 6 nodes with this violation:
               \e[33m┃\e[0m
               \e[33m┃\e[0m 1. <div>1</div>
               \e[33m┃\e[0m 2. <div>2</div>
               \e[33m┃\e[0m 3. <div>3</div>
               \e[33m┃\e[0m 4. <div>4</div>
               \e[33m┃\e[0m 5. <div>5</div>
               \e[33m┃\e[0m ... and 1 more node.

               """
    end

    test "prints 7 nodes" do
      nodes = [
        %Node{html: "<div>1</div>"},
        %Node{html: "<div>2</div>"},
        %Node{html: "<div>3</div>"},
        %Node{html: "<div>4</div>"},
        %Node{html: "<div>5</div>"},
        %Node{html: "<div>6</div>"},
        %Node{html: "<div>7</div>"}
      ]

      assert Formatter.format_violation(violation_with_nodes(nodes)) ===
               """
               \e[33m\e[7m moderate \e[0m help
               \e[33m┃\e[0m Learn more: help_url
               \e[33m┃\e[0m
               \e[33m┃\e[0m There are 7 nodes with this violation:
               \e[33m┃\e[0m
               \e[33m┃\e[0m 1. <div>1</div>
               \e[33m┃\e[0m 2. <div>2</div>
               \e[33m┃\e[0m 3. <div>3</div>
               \e[33m┃\e[0m 4. <div>4</div>
               \e[33m┃\e[0m 5. <div>5</div>
               \e[33m┃\e[0m ... and 2 more nodes.

               """
    end
  end

  describe "format_nodes" do
    test "prints nodes" do
      nodes = [
        %Node{html: "<h1>Hello</h1>"},
        %Node{html: "<p>Lorem ipsum</p>"}
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There are 2 nodes with this violation:

               1. <h1>Hello</h1>
               2. <p>Lorem ipsum</p>
               """
    end

    test "prints maximum 5 nodes" do
      nodes = [
        %Node{html: "<h1>Hello</h1>"},
        %Node{html: "<p>Lorem ipsum</p>"},
        %Node{html: "<p>Lorem ipsum</p>"},
        %Node{html: "<p>Lorem ipsum</p>"},
        %Node{html: "<p>Lorem ipsum</p>"},
        %Node{html: "<p>Lorem ipsum</p>"},
        %Node{html: "<p>Lorem ipsum</p>"}
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There are 7 nodes with this violation:

               1. <h1>Hello</h1>
               2. <p>Lorem ipsum</p>
               3. <p>Lorem ipsum</p>
               4. <p>Lorem ipsum</p>
               5. <p>Lorem ipsum</p>
               ... and 2 more nodes.
               """
    end

    test "trims down very long node html" do
      nodes = [
        %Node{
          html:
            "<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>"
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is 1 node with this violation:

               1. <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt u...
               """
    end

    test "escapes new lines in node html" do
      nodes = [
        %Node{
          html: "<p>\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr.\n</p>"
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is 1 node with this violation:

               1. <p>\\n  Lorem ipsum dolor sit amet, consetetur sadipscing elitr.\\n</p>
               """
    end

    test "turns failure summary into a list of possible actions" do
      nodes = [
        %Node{
          html: "<p>Hello 1</p>",
          failure_summary:
            "Fix any of the following:\n  Element has no child that is a title\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute"
        },
        %Node{
          html: "<p>Hello 2</p>",
          failure_summary: "Fix all of the following:\n  Page must have a level-one heading"
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There are 2 nodes with this violation:

               1. <p>Hello 1</p>

                  Fix any of the following:
                    - Element has no child that is a title
                    - aria-label attribute does not exist or is empty
                    - aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
                    - Element has no title attribute

               2. <p>Hello 2</p>

                  Fix all of the following:
                    - Page must have a level-one heading

               """
    end

    test "failure summary can include both 'all' and 'any' recommendations" do
      nodes = [
        %Node{
          html: "<p>Hello</p>",
          failure_summary:
            "Fix all of the following:\n  Element is in tab order and does not have accessible text\n\nFix any of the following:\n  Element does not have text that is visible to screen readers\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute"
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is 1 node with this violation:

               1. <p>Hello</p>

                  Fix all of the following:
                    - Element is in tab order and does not have accessible text

                  Fix any of the following:
                    - Element does not have text that is visible to screen readers
                    - aria-label attribute does not exist or is empty
                    - aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
                    - Element has no title attribute

               """
    end

    test "keeps failure summary unchanged if it does not match patterns" do
      nodes = [
        %Node{
          html: "<p>Hello</p>",
          failure_summary: "Lorem ipsum: Eeny, meeny, miny, moe."
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is 1 node with this violation:

               1. <p>Hello</p>

                  Lorem ipsum: Eeny, meeny, miny, moe.

               """

      nodes = [
        %Node{
          html: "<p>Hello</p>",
          failure_summary:
            "Fix all of the following:\n  Element is in tab order and does not have accessible text\n\nLorem ipsum: Eeny, meeny, miny, moe."
        }
      ]

      assert Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is 1 node with this violation:

               1. <p>Hello</p>

                  Fix all of the following:
                    - Element is in tab order and does not have accessible text

                  Lorem ipsum: Eeny, meeny, miny, moe.

               """
    end
  end
end
