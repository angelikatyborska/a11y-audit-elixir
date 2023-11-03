defmodule A11yAudit.FormatterTest do
  use ExUnit.Case

  describe "format_nodes" do
    test "prints nodes" do
      nodes = [
        %A11yAudit.Results.Node{html: "<h1>Hello</h1>"},
        %A11yAudit.Results.Node{html: "<p>Lorem ipsum</p>"}
      ]

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("\n") ===
               """
               Node 1/2
               <h1>Hello</h1>

               Node 2/2
               <p>Lorem ipsum</p>
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

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("\n") ===
               """
               Node 1/7
               <h1>Hello</h1>

               Node 2/7
               <p>Lorem ipsum</p>

               Node 3/7
               <p>Lorem ipsum</p>

               Node 4/7
               <p>Lorem ipsum</p>

               Node 5/7
               <p>Lorem ipsum</p>

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

      assert A11yAudit.Formatter.format_nodes(nodes) |> Enum.join("\n") ===
               """
               Node 1/1
               <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt u...
               """
    end

    test "turns failure summary into a list if possible" do
    end
  end
end
