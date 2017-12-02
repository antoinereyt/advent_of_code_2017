defmodule Day01.Part1 do
  def run(puzzle) do
    [first|_] = chars = puzzle |> String.graphemes
    (chars ++ [first]) |> solve([])
  end
  def solve([x,x|rest], acc), do: solve([x|rest],[x|acc])
  def solve([x|rest], acc), do: solve(rest,acc)
  def solve([],acc) do
    acc |> Enum.map(& String.to_integer/1) |> Enum.sum
  end
end
