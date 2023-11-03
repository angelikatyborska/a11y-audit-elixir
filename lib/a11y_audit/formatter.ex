defmodule A11yAudit.Formatter do
  @moduledoc false

  import IO.ANSI, only: [magenta: 0, yellow: 0, red: 0, white: 0, reset: 0, reverse: 0]

  @doc false
  def format_result(result) do
    %A11yAudit.Results.Result{
      id: id,
      description: description,
      help: help,
      help_url: help_url,
      impact: impact,
      nodes: nodes
    } = result

    color = impact_color(impact)

    header = "#{with_color("#{reverse()} #{impact} ", color)} #{id}"
    left_padding = with_color("┃ ", color)

    """

    """
  end

  @doc false
  def format_nodes(nodes) do
    # TODO: make customizable
    max_nodes_per_result = 5
    max_node_html_length = 100

    total_nodes = Enum.count(nodes)

    formatted_nodes =
      nodes
      |> Enum.take(max_nodes_per_result)
      |> Enum.with_index()
      |> Enum.map(fn {node, index} ->
        """
        Node #{index + 1}/#{total_nodes}
        #{trim_string(node.html, max_node_html_length)}
        """
      end)

    if max_nodes_per_result >= total_nodes do
      formatted_nodes
    else
      formatted_nodes ++ ["... and #{total_nodes - max_nodes_per_result} more nodes.\n"]
    end
  end

  defp trim_string(string, max_length) do
    if String.length(string) <= max_length do
      string
    else
      {start, _} = String.split_at(string, max_length)
      "#{start}..."
    end
  end

  @doc false
  def with_color(string, color) do
    "#{color}#{string}#{reset()}"
  end

  @doc false
  defp impact_color(impact) do
    case impact do
      :critical ->
        magenta()

      :serious ->
        red()

      :moderate ->
        yellow()

      :minor ->
        white()

      nil ->
        white()
    end
  end
end
