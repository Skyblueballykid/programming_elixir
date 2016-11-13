defmodule MyEnum do
  def all?(list) do
    all?(list, fn x -> !!x end)
  end

  def all?([], _func), do: true

  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _func), do: []
  def each([head | tail], func) do
    [func.(head) | each(tail, func)]
  end

  def filter([], _func), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, count) do
    _split(list, [], count)
  end

  defp _split([], front, _) do
    [Enum.reverse(front), []]
  end
  defp _split(tail, front, 0) do
    [Enum.reverse(front), tail]
  end
  defp _split([head | tail], front, count) do
    _split(tail, [head | front], count - 1)
  end

  def take(list, n), do: hd(split(list, n))
end

IO.inspect MyEnum.all? [1, 3, 8, 10, "String"]
IO.inspect MyEnum.all? []
IO.inspect MyEnum.each [1, 2, 3], &(&1 + 1)
IO.inspect MyEnum.split [1, 2, 3, 4, 5, 6], 2
IO.inspect MyEnum.take [1, 2, 3, 4, 5, 6], 5
