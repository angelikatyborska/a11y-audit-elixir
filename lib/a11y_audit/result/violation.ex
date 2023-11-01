defmodule A11yAudit.Result.Violation do
  defstruct(:id, :description, :help, :help_url, :impact, :nodes)

  @type impact :: :minor | :moderate | :serious | :critical
  @type __MODULE__.t() :: %{
          id: String.t(),
          description: String.t(),
          help: String.t(),
          help_url: String.t(),
          impact: impact,
          nodes: list(A11yAudit.Result.Node)
        }
end
