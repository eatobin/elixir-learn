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
  def of(n), do: n * of(n-1)
end

defmodule MyLen do
  def mLen([]), do: 0
  def mLen([_ | t]), do: 1 + mLen(t)
end
