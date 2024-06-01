defmodule A11yAudit.Wallaby do
  require Logger

  alias A11yAudit.JS
  alias A11yAudit.Results
  alias A11yAudit.Assertions

  def assert_no_violations(session) do
    if Code.ensure_loaded?(Wallaby) do
      session
      |> Wallaby.Browser.execute_script(JS.axe_core())
      |> Wallaby.Browser.execute_script(JS.await_audit_result(), [], fn axe_result ->
        audit_results = Results.from_json(axe_result)
        Assertions.assert_no_violations(audit_results)
      end)
    else
      Logger.error("""
      Could not find dependency :wallaby.

      Please add :wallaby to your dependencies:

          {:wallaby, "~> 0.30"}
      """)

      raise "missing dependency :wallaby"
    end
  end
end
