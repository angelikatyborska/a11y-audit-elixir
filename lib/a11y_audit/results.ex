defmodule A11yAudit.Results do
  @moduledoc """
  Corresponds to axe-core's results object.
  Some fields omitted.

  Axe-core documentation: https://github.com/dequelabs/axe-core/blob/develop/doc/API.md#results-object
  """

  @enforce_keys [:test_engine, :url, :violations]
  defstruct [:test_engine, :url, :violations]

  @type t :: %{
          test_engine: String.t(),
          url: String.t(),
          violations: list(A11yAudit.Results.Result.t())
        }

  @spec from_json(map) :: t
  def from_json(map) do
    %{
      "testEngine" => test_engine,
      "url" => url,
      "violations" => violations
    } = map

    %__MODULE__{
      test_engine: test_engine,
      url: url,
      violations:
        Enum.map(violations, fn violation ->
          A11yAudit.Results.Violation.from_json(violation)
        end)
    }
  end
end
