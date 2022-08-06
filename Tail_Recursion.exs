defmodule Tabuada do

  def calcula(multiplicador) do
    tabuada(multiplicador, 1, [])
  end

  defp tabuada(_, 11, valores), do: valores

  defp tabuada(product1, product2, valores) do
    tabuada(product1, product2 + 1, valores ++ [product1 * product2])
  end

end