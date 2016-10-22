fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

fizz_buzz = fn n -> fizz_buzz.(rem(n, 3), rem(n, 5), n) end

IO.inspect fizz_buzz.(10)
IO.inspect fizz_buzz.(11)
IO.inspect fizz_buzz.(12)
IO.inspect fizz_buzz.(13)
IO.inspect fizz_buzz.(14)
IO.inspect fizz_buzz.(15)
IO.inspect fizz_buzz.(16)
