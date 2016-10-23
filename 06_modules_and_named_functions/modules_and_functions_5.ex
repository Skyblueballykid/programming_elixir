defmodule Math do
  def gcd(x, 0), do: x
  def gcd(x, y), do: gcd(y, rem(x, y))
end

IO.inspect Math.gcd(108, 30)
IO.inspect Math.gcd(50, 35)
