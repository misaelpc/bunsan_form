defmodule BunsanFormWeb.PageController do
  use BunsanFormWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
