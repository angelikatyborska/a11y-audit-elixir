defmodule A11yAudit.Formatter do
  @moduledoc false

  import IO.ANSI, only: [magenta: 0, yellow: 0, red: 0, white: 0, reset: 0, reverse: 0]

  @doc false
  def format_result(result) do
    %A11yAudit.Results.Result{
      id: _id,
      description: _description,
      help: help,
      help_url: help_url,
      impact: impact,
      nodes: nodes
    } = result

    color = impact_color(impact)

    header = "#{with_color("#{reverse()} #{impact} ", color)} #{help}"
    left_padding = "  "

    nodes_with_padding = format_nodes(nodes) |> Enum.map(fn line -> left_padding <> line end)

    """
    #{header}
    #{left_padding}Learn more: #{help_url}
    #{left_padding}
    #{nodes_with_padding}
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
      |> Enum.flat_map(fn {node, index} ->
        index_string = "#{index + 1}. "

        [
          "#{index_string}#{trim_string(node.html, max_node_html_length)}\n"
        ] ++
          if node.failure_summary do
            String.split(
              "\n" <> format_list_in_failure_summary(node.failure_summary) <> "\n\n",
              ~r/(.*)\n/,
              include_captures: true,
              trim: true
            )
            |> Enum.map(fn string ->
              if String.trim(string) == "" do
                string
              else
                String.duplicate(" ", String.length(index_string)) <> string
              end
            end)
          else
            []
          end
      end)

    formatted_nodes =
      if max_nodes_per_result >= total_nodes do
        formatted_nodes
      else
        formatted_nodes ++ ["... and #{total_nodes - max_nodes_per_result} more nodes.\n"]
      end

    summary_string =
      if total_nodes == 1 do
        "There is one node"
      else
        "There are #{total_nodes} nodes"
      end

    [
      "#{summary_string} with this violation:\n\n"
    ] ++ formatted_nodes
  end

  defp trim_string(string, max_length) do
    if String.length(string) <= max_length do
      string
    else
      {start, _} = String.split_at(string, max_length)
      "#{start}..."
    end
  end

  defp format_list_in_failure_summary(failure_summary) do
    failure_summary
    |> String.split(~r/Fix (any|all) of the following:\n(.*)\n\n/,
      include_captures: true,
      trim: true
    )
    |> Enum.map(fn maybe_list_string ->
      maybe_list_string
      |> String.split(~r/\n\n/, include_captures: true, trim: true)
      |> Enum.map(fn string_chunk ->
        if Regex.match?(~r/^Fix (any|all) of the following:\n/, string_chunk) do
          # string chunk is a list, add dashes to list elements
          String.replace(string_chunk, ~r/\n  ([^\s])/, "\n  - \\g{1}")
        else
          # string chunk does not match the expected list format, don't modify it
          string_chunk
        end
      end)
      |> Enum.join("")
    end)
    |> Enum.join("")
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
