defmodule Day02.Part1 do
  def run(puzzle) do
    Enum.reduce(csv(puzzle), 0, fn(cells,acc) ->
      acc + Enum.max(cells) - Enum.min(cells)
    end)
  end

  def csv(data) do
    for line <- String.split(data, "\n", trim: true), do:
      for cell <- String.split(line, "\t"), do:
        String.to_integer(cell)
  end
end
