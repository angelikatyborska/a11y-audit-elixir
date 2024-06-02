defmodule A11yAudit.ViolationFilter do
  @moduledoc """
  A behavior for excluding certain violations from the results.

  Modules implementing this behavior can be passed as a `:filter` option to:
  - `A11yAudit.Wallaby.assert_no_violations/2`
  - `A11yAudit.Hound.assert_no_violations/1`
  - `A11yAudit.Assertions.assert_no_violations/2`

  ## Example
  ```
  defmodule MyApp.A11yAuditViolationFilter do
    @behaviour A11yAudit.ViolationFilter

    @impl A11yAudit.ViolationFilter
    def exclude_violation?(%A11yAudit.Results.Violation{} = violation) do
      ids_to_ignore = ["aria-deprecated-role", "image-redundant-alt"]
      violation.id in ids_to_ignore
    end
  end
  ```
  """

  @callback exclude_violation?(A11yAudit.Results.Violation.t()) :: true | false
end
