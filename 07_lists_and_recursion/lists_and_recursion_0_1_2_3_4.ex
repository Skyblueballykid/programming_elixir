defmodule MyList do
  # exercise 0
  def sum([]) do
    0
  end

  def sum([head | tail]) do
    head + sum(tail)
  end

  # exercise 1
  def mapsum(list, func) do
    _mapsum(list, func, 0)
  end

  defp _mapsum([], _func, acc), do: acc
  defp _mapsum([head | tail], func, acc) do
    _mapsum(tail, func, func.(head) + acc)
  end

  # exercise 2
  def max(list) do
    _max(list, 0)
  end

  defp _max([], max), do: max
  defp _max([head | tail], max) when head > max do
    _max(tail, head)
  end
  defp _max([_head | tail], max) do
    _max(tail, max)
  end

  # exercise 3
  def caesar(list, n) do
    _caesar(list, n)
  end

  defp _caesar([], _n), do: []
  defp _caesar([head | tail], n) when head + n <= ?z do
    [head + n | _caesar(tail, n)]
  end
  defp _caesar([head | tail], n) do
    [head + n - 26 | _caesar(tail, n)]
  end

  # exercise 4
  def span(from, to) do
    _span(from, to)
  end

  defp _span(from, to) when from > to, do: []
  defp _span(from, to) do
    [from | _span(from + 1, to)]
  end
end

IO.inspect MyList.sum [1, 2, 3, 4]
IO.inspect MyList.mapsum [1, 2 ,3], &(&1 * &1)
IO.inspect MyList.max [2, 5, 7, 1]
IO.inspect MyList.caesar 'ryvkve', 13
IO.inspect MyList.span 1, 10
