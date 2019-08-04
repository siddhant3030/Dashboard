defmodule Dashboard.Model.Expense do
  alias Dashboard.Repo
  alias Dashboard.Schema.Expense

  def list_expenses do
    Repo.all(Expense)
  end

  def get_expense!(id), do: Repo.get(Expense, id)

  def create_expense(attrs \\ {}) do
    %Expense{}
    |> Expense.changeset(attrs)
    |> Repo.insert()
  end

  def delete_expense(expense) do
    Repo.delete(expense)
  end
end
