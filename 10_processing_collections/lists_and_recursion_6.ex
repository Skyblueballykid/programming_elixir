defmodule MyList do
  def flatten(list) do
    _flatten(list)
  end

  defp _flatten([]), do: []
  defp _flatten([head | tail]) when is_list(head) do
    _flatten(head) ++ flatten(tail)
  end
  defp _flatten([head | tail]) do
    [head | _flatten(tail)]
  end
end

IO.inspect MyList.flatten [[1, 3, 8], [[[]]], "String"]
