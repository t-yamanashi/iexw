defmodule IexwWeb.PageController do
  use IexwWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
