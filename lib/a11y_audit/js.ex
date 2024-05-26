defmodule A11yAudit.JS do
  def axe_core() do
    path = Application.app_dir(:a11y_audit, "priv/axe.min.js")
    File.read!(path)
  end

  def await_audit_result() do
    "return await axe.run();"
  end
end
