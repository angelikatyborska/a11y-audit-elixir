if Code.ensure_loaded?(Wallaby) do
  defmodule A11yAudit.Wallaby do
    @moduledoc "ExUnit assertions for Wallaby tests"

    require Logger

    alias A11yAudit.JS
    alias A11yAudit.Results
    alias A11yAudit.Assertions

    @doc """
    Runs an audit on the current page and asserts that the audit results have no violations.

    See `A11yAudit.Assertions.assert_no_violations/2` for the list of configuration options.
    """
    @spec assert_no_violations(Wallaby.Browser.parent(), Assertions.opts()) ::
            Wallaby.Browser.parent() | no_return()
    def assert_no_violations(session, opts \\ []) do
      session
      |> Wallaby.Browser.execute_script(JS.axe_core())
      |> Wallaby.Browser.execute_script(JS.await_audit_results(), [], fn axe_result ->
        audit_results = Results.from_json(axe_result)
        Assertions.assert_no_violations(audit_results, opts)
      end)
    end
  end
end
