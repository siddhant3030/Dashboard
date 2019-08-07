defmodule Dashboard.Schema.Opensource do
  use Ecto.Schema
  import Ecto.Changeset

  schema "opensources" do
    field :name, :string
    field :start_date, :date
    field :description, :string

    timestamps()
  end

  def changeset(opensource, attrs) do
    opensource
    |> cast(attrs, [:name, :start_date, :description])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
