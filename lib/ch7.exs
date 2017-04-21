defmodule MyList do
  def sum1([]),              do: 0
  def sum1([ head | tail ]), do: head + sum1(tail)

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)
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
