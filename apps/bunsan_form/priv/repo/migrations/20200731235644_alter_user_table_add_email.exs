defmodule BunsanForm.Repo.Migrations.AlterUserTableAddEmail do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :email, :string
      remove :eth
    end
  end
end
