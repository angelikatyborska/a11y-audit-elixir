defmodule A11yAudit.JS do
  @moduledoc "axe-core JavaScript source"

  @spec axe_core() :: String.t()
  def axe_core() do
    path = Application.app_dir(:a11y_audit, "priv/axe.min.js")
    File.read!(path)
  end

  @spec await_audit_results() :: String.t()
  def await_audit_results() do
    "return await axe.run();"
  end
end
