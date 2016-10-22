fizz_buzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

IO.inspect fizz_buzz.(0, 0, 5)
IO.inspect fizz_buzz.(0, 4, 5)
IO.inspect fizz_buzz.(2, 0, 5)
IO.inspect fizz_buzz.(4, 3, 5)

