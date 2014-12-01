# Chapter 5: Anonymous Functions

# exercise 1
list_concat = fn
  (l1, l2) -> l1 ++ l2
end
list_concat.([1,2,3,4],[5,6,7,8])

sum = fn
  a, b, c -> a + b + c
end
sum.(1,2,3)

pair_tuple_to_list = fn
  {x, y} -> [x, y]
end
pair_tuple_to_list.({1, 3})

# exercise 2
fizzbuzz_helper = fn
  (0, b, c) -> "Fizz"
  (a, 0, c) -> "Buzz"
  (a, b, c) -> c
end

# exercise 3
fizzbuzz = fn
  n -> fizzbuzz_helper.(rem(n,3), rem(n,5), n)
end

fizzbuzz.(1)
fizzbuzz.(2)
fizzbuzz.(3)
fizzbuzz.(4)
fizzbuzz.(5)
fizzbuzz.(6)
fizzbuzz.(7)

# exercise 4
prefix = fn
    pre -> (fn(ln) -> pre <> " " <> ln end)
end
mrs = prefix.("Mrs")
mrs.("Smith")


# exercise 5
Enum.map([1,2,3,4], &(&1 + 2))
Enum.map([1,2,3,4], &(IO.inspect &1))


