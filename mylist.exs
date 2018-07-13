defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([h | t]), do: [h * h | square(t)]

  def map([], _func), do: []
  def map([h | t], func), do: [func.(h) | map(t, func)]

  # def sum(list), do: _sum(list, 0)
  # defp _sum([], total), do: total
  # defp _sum([h | t], total), do: _sum(t, h + total)
  def sum(list), do: sum(list, 0)
  defp sum([], total), do: total
  defp sum([h | t], total), do: sum(t, h + total)

  def reduce([], value, _), do: value
  def reduce([h | t], value, func), do: reduce(t, func.(h, value), func)

  def mapsum(list, func), do: _mapsum(list, 0, func)
  defp _mapsum([], value, _func), do: value
  defp _mapsum([head | tail], value, func), do: _mapsum(tail, func.(head) + value, func)
end
