defmodule Mod4 do
  def sum(1), do: 1
  def sum(n), do: n + sum(n - 1)

  def gcd(x, 0), do: x
  def gcd(0, y), do: y
  def gcd(x, y), do: gcd(y, rem(x, y))
end
