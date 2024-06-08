defmodule DemoWeb.PageController do
  use DemoWeb, :controller

  def valid(conn, _params) do
    render(conn, :valid)
  end

  def invalid(conn, _params) do
    render(conn, :invalid)
  end

  def dynamic_invalid(conn, _params) do
    render(conn, :dynamic_invalid)
  end
end
