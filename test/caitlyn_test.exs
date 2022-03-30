defmodule CaitlynTest do
  use ExUnit.Case
  doctest Caitlyn

  test "greets the world" do
    assert Caitlyn.hello() == :world
  end
end
