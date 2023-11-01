ExUnit.start()

defmodule ElixirLearnTest do
  use ExUnit.Case, async: true

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "not the truth" do
    assert 1 + 1 != 3
  end
end
