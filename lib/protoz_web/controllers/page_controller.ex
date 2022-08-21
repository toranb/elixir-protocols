defmodule ProtozWeb.PageController do
  use ProtozWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
