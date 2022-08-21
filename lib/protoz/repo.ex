defmodule Protoz.Repo do
  use Ecto.Repo,
    otp_app: :protoz,
    adapter: Ecto.Adapters.Postgres
end
