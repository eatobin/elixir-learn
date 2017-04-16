defmodule MyList do
  defX sum2([]),              do: 0
  def sum2([ head | tail ]), do: head + sum1(tail)
end
