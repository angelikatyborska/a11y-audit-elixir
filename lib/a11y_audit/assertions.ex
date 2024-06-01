defmodule A11yAudit.Assertions do
  alias A11yAudit.Formatter

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
