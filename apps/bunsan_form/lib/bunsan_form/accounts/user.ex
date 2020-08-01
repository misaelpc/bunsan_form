defmodule BunsanForm.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :btc, :decimal
    field :name, :string
    field :pin, :string
    field :usd, :decimal
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :pin, :usd, :email, :btc])
    |> validate_required([:name, :pin, :usd, :email, :btc])
  end
end
