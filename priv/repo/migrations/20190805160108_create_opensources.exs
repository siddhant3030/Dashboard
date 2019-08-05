defmodule Dashboard.Repo.Migrations.CreateOpensources do
  use Ecto.Migration

  def change do
    create table(:opensources) do
      add :name, :string
      add :description, :text
      add :start_date, :date
      timestamps()
    end
  end
end
