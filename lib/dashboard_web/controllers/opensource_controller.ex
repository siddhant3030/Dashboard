defmodule DashboardWeb.OpensourceController do
  use DashboardWeb, :controller
  alias Dashboard.Schema.Opensource
  alias Dashboard.Model.Opensource, as: OpensourceModel


  def index(conn, _params) do
    render(conn, "index.html")
  end

  def create(conn, %{"opensource" => opensource_params}) do
    case OpensourceModel.create_opensource(opensource_params) do
      {:ok, opensource} ->
        conn
        |> put_flash(:info, "Expense created successfully")
        |> redirect(to: Routes.opensource_path(conn, :show, opensource))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end


  def show(conn, %{"id" => id}) do
    opensource = OpensorceModel.get_opensource!(id)
    render(conn, "show.html", opensource: opensource)
  end
end
