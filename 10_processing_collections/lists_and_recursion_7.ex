defmodule MyPrime do
  # Span function from chapter 7
  def span(from, to) do
    _span(from, to)
  end

  defp _span(from, to) when from > to, do: []
  defp _span(from, to) do
    [from | _span(from + 1, to)]
  end

  def primes(from, to) do
    for x <- span(from, to), prime?(x) == true, do: x
  end

  def prime?(x) do
    Enum.all?(2..(x - 1), &(rem(x, &1) !== 0))
  end
end

IO.inspect MyPrime.primes(0, 100)
