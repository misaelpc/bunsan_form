# In this file, we load production configuration and secrets
# from environment variables. You can also hardcode secrets,
# although such is generally not recommended and you have to
# remember to add this file to your .gitignore.
use Mix.Config

config :bunsan_form, BunsanForm.Repo,
  username: "postgres",
  password: "postgres",
  database: "bunsan_form_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :bunsan_form_web, BunsanFormWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: "s2zzPeVjeKWAsRSqrBCmOPLu/jEagAEjO78Sv9lziMIr3u49Y41lWqQLTo+JCCMN"

# ## Using releases (Elixir v1.9+)
#
# If you are doing OTP releases, you need to instruct Phoenix
# to start each relevant endpoint:
#
#     config :bunsan_form_web, BunsanFormWeb.Endpoint, server: true
#
# Then you can assemble a release by calling `mix release`.
# See `mix help release` for more information.
