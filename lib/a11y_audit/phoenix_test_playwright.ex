if Code.ensure_loaded?(PhoenixTest.Playwright) do
  defmodule A11yAudit.PhoenixTest.Playwright do
    @moduledoc "ExUnit assertions for PhoenixTest.Playwright tests"

    alias A11yAudit.JS
    alias A11yAudit.Results
    alias A11yAudit.Assertions

    @doc """
    Runs an audit on the current page and asserts that the audit results have no violations.

    See `A11yAudit.Assertions.assert_no_violations/2` for the list of configuration options.
    """
    @spec assert_no_violations(PhoenixTest.Playwright.t(), Assertions.opts()) ::
            PhoenixTest.Playwright.t() | no_return()
    def assert_no_violations(conn, opts \\ []) do
      conn
      |> PhoenixTest.Playwright.evaluate(JS.axe_core())
      |> PhoenixTest.Playwright.evaluate("axe.run()", fn axe_result ->
        audit_results = Results.from_json(axe_result)
        Assertions.assert_no_violations(audit_results, opts)
      end)
    end
  end
end
