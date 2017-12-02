defmodule Day02.Part2 do
  def run(puzzle) do
    Enum.map(csv(puzzle), fn(cells) ->
      for a <- cells, b <- cells, a > b and rem(a,b) == 0, do: div(a,b)
    end)
    |> List.flatten
    |> Enum.sum
  end

  def csv(data) do
    for line <- String.split(data, "\n", trim: true), do:
      for cell <- String.split(line, "\t"), do:
        String.to_integer(cell)
  end
end
