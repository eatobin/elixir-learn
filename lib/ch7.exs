defmodule MyList do
  def sum1([]),              do: 0
  def sum1([ head | tail ]), do: head + sum1(tail)

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)
end
