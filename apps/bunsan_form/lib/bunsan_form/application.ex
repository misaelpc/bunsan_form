defmodule BunsanForm.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BunsanForm.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: BunsanForm.PubSub}
      # Start a worker by calling: BunsanForm.Worker.start_link(arg)
      # {BunsanForm.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: BunsanForm.Supervisor)
  end
end
