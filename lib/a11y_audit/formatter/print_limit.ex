defmodule A11yAudit.Formatter.PrintLimit do
  @moduledoc false

  def truncate_list(list, limit) do
    if limit == :infinity do
      {list, 0}
    else
      truncated_list = Enum.take(list, limit)
      omitted_element_count = Enum.count(list) - Enum.count(truncated_list)
      {truncated_list, omitted_element_count}
    end
  end
end
