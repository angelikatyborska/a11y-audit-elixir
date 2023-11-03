defmodule A11yAudit.Results.Node do
  @enforce_keys [:html]
  defstruct [:html]

  @type t :: %{
          html: String.t()
        }

  def from_json(map) do
    %{"html" => html} = map
    %__MODULE__{html: html}
  end
end
