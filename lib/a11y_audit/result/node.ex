defmodule A11yAudit.Result.Node do
  defstruct :html

  @type __MODULE__.t() :: %{
          html: String.t()
        }
end
