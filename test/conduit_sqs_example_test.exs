defmodule ConduitSqsExampleTest do
  use ExUnit.Case
  doctest ConduitSqsExample

  test "greets the world" do
    assert ConduitSqsExample.hello() == :world
  end
end
