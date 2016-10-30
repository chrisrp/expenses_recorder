defmodule ExpensesRecorder.Repo.Migrations.RemoveNameFromUser do
  use Ecto.Migration

  def up do
    alter table(:users) do
      remove :name
    end     
  end

  def down do
  end
end
