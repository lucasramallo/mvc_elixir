defmodule McvElixirTest do
  use ExUnit.Case
  doctest McvElixir

  test "greets the world" do
    assert McvElixir.hello() == :world
  end
end
