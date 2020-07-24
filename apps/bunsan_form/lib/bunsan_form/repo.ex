defmodule BunsanForm.Repo do
  use Ecto.Repo,
    otp_app: :bunsan_form,
    adapter: Ecto.Adapters.Postgres
end
