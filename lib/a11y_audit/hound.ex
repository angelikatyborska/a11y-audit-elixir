defmodule A11yAudit.Hound do
  @moduledoc "ExUnit assertions for Hound tests"

  require Logger

  alias A11yAudit.JS
  alias A11yAudit.Results
  alias A11yAudit.Assertions

  @spec assert_no_violations(Assertions.opts()) :: nil | no_return
  def assert_no_violations(opts \\ []) do
    if Code.ensure_loaded?(Hound) do
      Hound.Helpers.ScriptExecution.execute_script(JS.axe_core())
      axe_result = Hound.Helpers.ScriptExecution.execute_script(JS.await_audit_results())
      audit_results = Results.from_json(axe_result)
      Assertions.assert_no_violations(audit_results, opts)
    else
      Logger.error("""
      Could not find dependency :hound.

      Please add :hound to your dependencies:

          {:hound, "~> 1.1"}
      """)

      raise "missing dependency :hound"
    end
  end
end
