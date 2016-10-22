prefix = fn str1 -> (fn str2 -> "#{str1} #{str2}" end) end

mrs = prefix.("Mrs")
IO.inspect mrs.("Smith")
IO.inspect prefix.("Elixir").("Rocks")
