defmodule A11yAudit.Assertions do
  alias A11yAudit.Formatter

  def assert_no_violations(results) do
    if results.violations != [] do
      error_message =
        "Expected page to have no accessibility violations, but got #{Enum.count(results.violations)} violations.\n"

      error_message = error_message <> Formatter.format_results(results)

      raise ExUnit.AssertionError,
        message: error_message
    end
  end
end
