defmodule MyList do
  def sum1([]), do: 0
  def sum1([head | tail]), do: head + sum1(tail)

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum([], total), do: total
  def sum([head | tail], total), do: sum(tail, head + total)

  def sum_p(list), do: _sum_p(list, 0)
  defp _sum_p([], total), do: total
  defp _sum_p([head | tail], total), do: _sum_p(tail, head + total)

  def reduce([], accum, _) do
    accum
  end
  def reduce([head | tail], accum, func) do
    reduce(tail, func.(head, accum), func)
  end
end


defmodule Speak do
  def greet({:formal, first_name, last_name}) do
    IO.puts("Greetings #{first_name} #{last_name}!")
  end

  def greet({:informal, first_name, last_name}) do
    IO.puts("What’s up #{first_name} #{last_name}!")
  end
end

defmodule Report do
  def get_best_move([first|[]]) do
    first
  end

  def get_best_move([_first|rest]) do
    rest
  end
end

# iex(6)> Report.get_best_move([1])
# 1
# iex(7)> Report.get_best_move([1,2,3])
# [2, 3]
