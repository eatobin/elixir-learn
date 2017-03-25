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

defmodule MySum do
  def mSum(0), do: 0
  def mSum(n), do: n + mSum(n-1)
end

defmodule GCD do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))
end
