defmodule Times do
  def double(n) do
    n * 2
  end
  def double2(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: 2 * (double n)
end

defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n-1)
end

defmodule MyLen do
  def mLen([]), do: 0
  def mLen([ _ | t ]), do: 1 + mLen(t)
end

defmodule MySum do
  def mSum(0), do: 0
  def mSum(n), do: n + mSum(n-1)
end

defmodule GCD do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))
end

defmodule Guard do
  def what_is(x) when is_number(x) do
    IO.puts "#{x} is a number"
  end
  def what_is(x) when is_list(x), do: IO.puts "#{inspect(x)} is a list"
  def what_is(x) when is_atom(x), do: IO.puts "#{x} is an atom"
end

defmodule Example do
  def func(p1, p2 \\ 2, p3 \\ 3, p4) do
    IO.inspect [p1, p2, p3, p4]
  end
end

defmodule Params do
  def func(p1, p2 \\ 123)
  def func(_, p2) when p2 == 99, do: IO.puts "you said 99"
  def func(_, p2) when p2 == 123, do: IO.puts "oh... you said 123"
  def func(p1, p2), do: IO.inspect [p1, p2]
end

defmodule Chop do
  def guess(x, a..b) when x == div(a+b, 2) do
    IO.puts "Is it #{x}"
    IO.puts "#{x}"
  end
  def guess(x, a..b) when x < div(a+b, 2) do
    n = div(a+b, 2)
    IO.puts "Is it #{n}"
    guess(x, a..n)
  end
  def guess(x, a..b) when x > div(a+b, 2) do
    n = div(a+b, 2)
    IO.puts "Is it #{n}"
    guess(x, n..b)
  end
end

defmodule Pipes do
  def pipe_it do
    (1..10)
    |> Enum.map(&(&1*&1))
    |> Enum.filter(&(&1 < 40))
  end
end

defmodule Example do
  def func1, do: List.flatten [1,[2,3],4]
  def func2 do
    import List, only: [flatten: 1]
    flatten [5,[6,7],8]
  end
end

defmodule Attrib do
  @attr "one"
  def first, do: @attr
  @attr "two"
  def second, do: @attr
end

# :io.format("The number is ~3.1f~n", [5.678])
# :io.format("~4.2f~n", [5.678])
# System.cwd()
# Path.extname("dave/test.exs")
# https://github.com/devinus/poison
# System.cmd("ls", [])
# System.cmd("ls", ["-a"])
# System.cmd("ls", ["-ap"])
