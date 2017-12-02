defmodule Day01.Part2 do
  @doc """
  for the input "12131415"

  1) "split" the list in two equal parts
    => [[1,2,1,3], [1,4,1,5]]

  2) "superpose" the two lists and keep the elements with same value AND same position

       [1,2,1,3]
       [1,4,1,5]
       ---------
    => [1,  1  ]

  3) "sum" it !
    => sum([1,1]) => 2

  4) "multiply" by 2 because the list is circular and even sized,
     so processing the first or second part whould have the same result.
    => 2 * 2 = 4
  """
  def run(puzzle) do
    chars = puzzle |> String.graphemes
    [a,b] = Enum.chunk_every(chars, div(length(chars), 2)) # "split" list in two equal parts => [[a,b], [c,d]]

    Enum.zip(a,b) # "superpose" => [{a, b}, {c, d}]
    |> Enum.reduce(0, fn
      {x,x},acc -> String.to_integer(x) + acc # sum 
      _,acc -> acc
    end)
    |> Kernel.*(2) # multiply
  end
end