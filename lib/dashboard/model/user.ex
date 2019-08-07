defmodule Dashboard.Model.User do
  alias Dashboard.Repo
  alias Dashboard.Schema.User

  def list_users do
    Repo.all(User)
  end

  def get_user!(id), do: Repo.get(User, id)

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  def delete_user(user) do
    Repo.delete(user)
  end
end
