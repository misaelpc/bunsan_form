# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :bunsan_form,
  ecto_repos: [BunsanForm.Repo]

config :bunsan_form_web,
  ecto_repos: [BunsanForm.Repo],
  generators: [context_app: :bunsan_form]

# Configures the endpoint
config :bunsan_form_web, BunsanFormWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s2zzPeVjeKWAsRSqrBCmOPLu/jEagAEjO78Sv9lziMIr3u49Y41lWqQLTo+JCCMN",
  render_errors: [view: BunsanFormWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: BunsanForm.PubSub,
  live_view: [signing_salt: "B113Qxum"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
