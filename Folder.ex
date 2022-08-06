defmodule Arquivo do
  def ler(arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo Inexistente!"
      {:error, :eacces} -> "Arquivo sem oermissão de Leitura!"
      {:error, :eisdir} -> "Nao é um arquivo, é um Diretório!"
      {:error, :enotdir} -> "Não é um Diretório!"
      {:error, :enomem} -> "Sem espaço na memória pata realizar a ação!"
      _ -> "Somethings with wrong"
    end
  end
end