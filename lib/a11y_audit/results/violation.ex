defmodule A11yAudit.Results.Violation do
  @moduledoc """
  Corresponds to a single object in axe-core's results object's violations array.
  Some fields omitted.

  Axe-core documentation: https://github.com/dequelabs/axe-core/blob/develop/doc/API.md#results-arrays
  """

  @enforce_keys [:id, :description, :help, :help_url, :impact, :nodes]
  defstruct [:id, :description, :help, :help_url, :impact, :nodes]

  @type impact :: :minor | :moderate | :serious | :critical
  @type t :: %{
          id: String.t(),
          description: String.t(),
          help: String.t(),
          help_url: String.t(),
          impact: impact,
          nodes: list(A11yAudit.Result.Node.t())
        }

  @spec from_json(map) :: t
  def from_json(map) do
    %{
      "id" => id,
      "description" => description,
      "help" => help,
      "helpUrl" => help_url,
      "impact" => impact,
      "nodes" => nodes
    } = map

    %__MODULE__{
      id: id,
      description: description,
      help: help,
      help_url: help_url,
      impact: impact_to_atom(impact),
      nodes:
        Enum.map(nodes, fn node ->
          A11yAudit.Results.Node.from_json(node)
        end)
    }
  end

  defp impact_to_atom(impact) do
    case impact do
      "minor" -> :minor
      "moderate" -> :moderate
      "serious" -> :serious
      "critical" -> :critical
      nil -> nil
    end
  end
end
