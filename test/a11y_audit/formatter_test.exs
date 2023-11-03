defmodule A11yAudit.FormatterTest do
  use ExUnit.Case

  describe "format_nodes" do
    test "prints nodes" do
      nodes = [
        %A11yAudit.Results.Node{html: "<h1>Hello</h1>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"}
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There are 2 nodes with this violation:

               1. <h1>Hello</h1>
               2. <p>Lorem ipsum</p>
               """
    end

    test "prints maximum 5 nodes" do
      nodes = [
        %A11yAudit.Results.Node{html: "<h1>Hello</h1>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"}
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
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
        %A11yAudit.Results.Node{
          html:
            "<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>"
        }
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is one node with this violation:

               1. <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt u...
               """
    end

    test "turns failure summary into a list of possible actions" do
      nodes = [
        %A11yAudit.Results.Node{
          html: "<p>Hello 1</p>",
          failure_summary:
            "Fix any of the following:\n  Element has no child that is a title\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute"
        },
        %A11yAudit.Results.Node{
          html: "<p>Hello 2</p>",
          failure_summary: "Fix all of the following:\n  Page must have a level-one heading"
        }
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
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
        %A11yAudit.Results.Node{
          html: "<p>Hello</p>",
          failure_summary:
            "Fix all of the following:\n  Element is in tab order and does not have accessible text\n\nFix any of the following:\n  Element does not have text that is visible to screen readers\n  aria-label attribute does not exist or is empty\n  aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty\n  Element has no title attribute"
        }
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is one node with this violation:

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
        %A11yAudit.Results.Node{
          html: "<p>Hello</p>",
          failure_summary: "Lorem ipsum: Eeny, meeny, miny, moe."
        }
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is one node with this violation:

               1. <p>Hello</p>

                  Lorem ipsum: Eeny, meeny, miny, moe.

               """

      nodes = [
        %A11yAudit.Results.Node{
          html: "<p>Hello</p>",
          failure_summary:
            "Fix all of the following:\n  Element is in tab order and does not have accessible text\n\nLorem ipsum: Eeny, meeny, miny, moe."
        }
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("") ===
               """
               There is one node with this violation:

               1. <p>Hello</p>

                  Fix all of the following:
                    - Element is in tab order and does not have accessible text

                  Lorem ipsum: Eeny, meeny, miny, moe.

               """
    end
  end
end
