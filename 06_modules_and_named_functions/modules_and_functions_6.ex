defmodule Chop do
  def guess(n, rng = low..high) do
    guess = div(low + high, 2)
    IO.puts "Is it #{guess}?"

    verify_guess(n, guess, rng)
  end

  defp verify_guess(n, guess, _) when guess == n do
    IO.puts "Found it! #{guess}"
  end

  defp verify_guess(n, guess, _low..high) when guess < n do
    guess(n, (guess + 1)..high)
  end

  defp verify_guess(n, guess, low.._high) when guess > n do
    guess(n, low..(guess - 1))
  end
end

IO.inspect Chop.guess(273, 1..1000)
