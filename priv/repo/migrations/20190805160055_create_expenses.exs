defmodule Dashboard.Repo.Migrations.CreateExpenses do
  use Ecto.Migration

  def change do
    create table(:expenses) do
      add :name, :string
      add :description, :text
      add :start_date, :date
      timestamps()
    end
  end
end
