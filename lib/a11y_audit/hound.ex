defmodule A11yAudit.Hound do
  require Logger

  alias A11yAudit.JS
  alias A11yAudit.Results
  alias A11yAudit.Assertions

  def assert_no_violations() do
    if Code.ensure_loaded?(Hound) do
      Hound.Helpers.ScriptExecution.execute_script(JS.axe_core())
      axe_result = Hound.Helpers.ScriptExecution.execute_script(JS.await_audit_result())
      audit_results = Results.from_json(axe_result)
      Assertions.assert_no_violations(audit_results)
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
