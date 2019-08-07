defmodule Dashboard.Model.Opensource do
  alias Dashboard.Repo
  alias Dashboard.Schema.Opensource

  def list_opensources do
    Repo.all(Opensource)
  end

  def get_opensource!(id), do: Repo.get(Opensource, id)

  def create_opensource(attrs \\ %{}) do
    %Opensource{}
    |> Opensource.changeset(attrs)
    |> Repo.insert()
  end

  def delete_opensource(opensource) do
    Repo.delete(opensource)
  end
end
