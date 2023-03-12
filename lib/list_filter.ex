defmodule ListFilter do
  def call(list), do: length(Enum.filter(list, fn x -> Integer.parse(x) != :error && Integer.mod(elem(Integer.parse(x),0),2) != 0 end))
end
