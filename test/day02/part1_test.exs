defmodule Day02.Part1.Test do
  use ExUnit.Case

  test "run" do
    input = File.read!("test/day02/input_1.txt")
    assert Day02.Part1.run(input) == 18

    # puzzle = File.read!("test/day02/puzzle.txt")
    # assert Day02.Part1.run(puzzle) == :solution
  end
end
