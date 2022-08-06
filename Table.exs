defmodule Table do 
  def calcula(multiplicador) do
    tabuada(multiplicador, 1)
  end

  defp tabuada(_, 11), do: []

  defp tabuada(product1, product2) do
    [product1 * product2] ++ tabuada(product1, product2 + 1)
  end
end