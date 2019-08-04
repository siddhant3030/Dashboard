defmodule Dashboard.Schema.Expense do
  use Ecto.Schema
  import Ecto.Changeset

  schema "expenses" do
    field :name, :string
    field :description, :string
    field :start_date, :date

    timestamps()
  end

  def changeset(expense, attrs) do
    expense
    |> cast(attrs, [:name, :description, :start_date])
    |> validate_required([:name, :start_date])
    |> unique_constraint(:name)
  end
end
