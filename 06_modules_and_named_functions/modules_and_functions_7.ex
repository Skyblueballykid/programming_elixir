defmodule ElixirOrErlang do
  def erlang_float_to_string_two_decimals do
    :io.format("~.2f~n", [10/3])
  end

  def elixir_value_of_os_env_variable do
    System.get_env("PATH")
  end

  def elixir_extension_component_of_file do
    Path.extname("aleks/test.exs")
  end

  def elixir_current_working_dir do
    System.cwd
  end

  def elixir_convert_json_string_into_elixir_data do
    """
    Found this library: https://github.com/talentdeficit/jsx
    """
  end

  def elixir_execute_command_in_shell do
    System.cmd("echo", ["Hello World"])
  end
end

IO.inspect ElixirOrErlang.erlang_float_to_string_two_decimals
IO.inspect ElixirOrErlang.elixir_value_of_os_env_variable
IO.inspect ElixirOrErlang.elixir_extension_component_of_file
IO.inspect ElixirOrErlang.elixir_current_working_dir
IO.inspect ElixirOrErlang.elixir_execute_command_in_shell
