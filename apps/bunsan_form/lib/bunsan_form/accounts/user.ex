defmodule BunsanForm.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :btc, :decimal
    field :eth, :decimal
    field :name, :string
    field :pin, :string
    field :usd, :decimal

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :pin, :usd, :eth, :btc])
    |> validate_required([:name, :pin, :usd, :eth, :btc])
  end
end
