defmodule A11yAudit.JSTest do
  use ExUnit.Case

  alias A11yAudit.JS

  describe "axe_core" do
    test "returns a string with the whole axe-core JS code" do
      axe_core = JS.axe_core()
      assert String.length(axe_core) > 100_000
      assert axe_core =~ "window.axe="
    end
  end
end
