defmodule Haiku do
  def haiku() do
    {:ok, contents} = File.read("day01.txt")

    contents
    |> String.split("\n", trim: true)
    |> Enum.map(&String.to_integer/1)
  end

  def large() do
    {:ok, csv} = File.read("day02.csv")

    [_head | tail] =
      csv
      |> String.trim_trailing()
      |> String.split(",")
      |> Enum.map(&String.to_integer/1)

    tail
  end
end

# iex(3)> c "haiku.exs"
# [Haiku]
# iex(4)> Haiku.haiku
# iex(9)> r Haiku
