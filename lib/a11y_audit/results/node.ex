defmodule A11yAudit.Results.Node do
  @enforce_keys [:html]
  defstruct [:html, :failure_summary]

  @type t :: %{
          html: String.t(),
          failure_summary: String.t()
        }

  def from_json(map) do
    %{"html" => html, "failureSummary" => failure_summary} = map
    %__MODULE__{html: html, failure_summary: failure_summary}
  end
end
