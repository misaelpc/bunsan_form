defmodule BunsanForm.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :pin, :string
      add :usd, :decimal
      add :eth, :decimal
      add :btc, :decimal

      timestamps()
    end

  end
end
