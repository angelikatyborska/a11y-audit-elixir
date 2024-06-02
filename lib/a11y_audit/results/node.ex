defmodule A11yAudit.Results.Node do
  @moduledoc """
  Corresponds to a single object in axe-core's nodes array of the violations array.
  Some fields omitted.

  Axe-core documentation: https://github.com/dequelabs/axe-core/blob/develop/doc/API.md#results-arrays
  """

  @enforce_keys [:html]
  defstruct [:html, :failure_summary]

  @type t :: %{
          html: String.t(),
          failure_summary: String.t()
        }

  @doc false
  @spec from_json(map) :: t
  def from_json(map) do
    %{"html" => html, "failureSummary" => failure_summary} = map
    %__MODULE__{html: html, failure_summary: failure_summary}
  end
end
