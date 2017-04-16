defmodule Chatreact.PageController do
  use Chatreact.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
