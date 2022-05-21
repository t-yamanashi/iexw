defmodule IexwWeb.PageController do
  use IexwWeb, :controller

  def index(conn, params) do
    val =
      params["val"]
      |> String.replace("os:", "")
      |> String.replace("System.", "")
      |> String.replace("file:", "")
      |> String.replace("File.", "")
      |> Code.eval_string()
      |> elem(0)
      |> inspect()

    render(conn, "index.html", val: val)
  end
end
