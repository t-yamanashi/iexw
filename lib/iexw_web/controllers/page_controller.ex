defmodule IexwWeb.PageController do
  use IexwWeb, :controller

  def index(conn, params) do
    val =
      params["val"]
      |> String.replace("os:", "")
      |> String.replace("System.", "")
      |> String.replace("file:", "")
      |> String.replace("File.", "")
      |> String.replace("IO.", "")
      |> String.replace("Code.", "")
      |> String.replace("Node.", "")
      |> String.replace("IEx.", "")
      |> String.replace("Mix.", "")
      |> String.replace("Eex.", "")
      |> String.replace(":mnesia","")
      |> Code.eval_string()
      |> elem(0)
      |> inspect(limit: :infinity)

    render(conn, "index.html", val: val)
  end
end
