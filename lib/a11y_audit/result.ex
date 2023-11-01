defmodule A11yAudit.Result do
  @moduledoc """
  Corresponding axe-core documentation: https://github.com/dequelabs/axe-core/blob/develop/doc/API.md#results-object
  """

  defstruct(:test_engine, :url, :violations)

  @type __MODULE__.t() :: %{
          test_engine: String.t(),
          url: String.t(),
          violations: list(A11yAudit.Result.Violation)
        }
end
