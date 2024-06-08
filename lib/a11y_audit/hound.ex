if Code.ensure_loaded?(Hound) do
  defmodule A11yAudit.Hound do
    @moduledoc "ExUnit assertions for Hound tests"

    alias A11yAudit.JS
    alias A11yAudit.Results
    alias A11yAudit.Assertions

    @doc """
    Runs an audit on the current page and asserts that the audit results have no violations.

    See `A11yAudit.Assertions.assert_no_violations/2` for the list of configuration options.
    """
    @spec assert_no_violations(Assertions.opts()) :: nil | no_return
    def assert_no_violations(opts \\ []) do
      Hound.Helpers.ScriptExecution.execute_script(JS.axe_core())
      axe_result = Hound.Helpers.ScriptExecution.execute_script(JS.await_audit_results())
      audit_results = Results.from_json(axe_result)
      Assertions.assert_no_violations(audit_results, opts)
    end
  end
end
