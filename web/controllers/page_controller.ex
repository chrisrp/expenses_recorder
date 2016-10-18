defmodule ExpensesRecorder.PageController do
  use ExpensesRecorder.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
