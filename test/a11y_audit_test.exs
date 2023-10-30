defmodule A11yAuditTest do
  use ExUnit.Case
  doctest A11yAudit

  test "greets the world" do
    assert A11yAudit.hello() == :world
  end
end
