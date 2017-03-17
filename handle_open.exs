handle_open = fn
  {:ok, file} -> "First line: #{IO.readfile(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("simple.exs"))
IO.puts handle_open.(File.open("nope"))
