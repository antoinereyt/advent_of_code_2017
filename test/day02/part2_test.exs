defmodule Day02.Part2.Test do
  use ExUnit.Case

  test "run" do
    input = File.read!("test/day02/input_2.txt")
    assert Day02.Part2.run(input) == 9

    # puzzle = File.read!("test/day02/puzzle.txt")
    # assert Day02.Part2.run(puzzle) == :solution
  end
end
