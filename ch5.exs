list_concat = fn (l1, l2) -> l1 ++ l2 end

sum = fn (x, y, z) -> x + y + z end

pair_tuple_to_list = fn ({t1, t2}) -> [t1, t2] end

fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, x -> x
end

fizzy = fn x -> fizz_buzz.(rem(x, 3), rem(x, 5), x) end

[fizzy.(10), fizzy.(11), fizzy.(12), fizzy.(13), fizzy.(14), fizzy.(15), fizzy.(16)]

IO.inspect Enum.map(10..16, fizzy)

add_n = fn n -> (fn other -> n + other end) end