defmodule A11yAudit.Assertions do
  @moduledoc "ExUnit assertions"

  alias A11yAudit.Formatter
  alias A11yAudit.Results

  @spec assert_no_violations(Results.t()) :: nil | no_return
  def assert_no_violations(results) do
    violations_count = Enum.count(results.violations)

    if violations_count > 0 do
      noun = if violations_count == 1, do: "violation", else: "violations"

      error_message =
        "Expected page to have no accessibility violations, but got #{Enum.count(results.violations)} #{noun}.\n\n"

      error_message = error_message <> Formatter.format_results(results)

      raise ExUnit.AssertionError,
        message: error_message
    end
  end
end
