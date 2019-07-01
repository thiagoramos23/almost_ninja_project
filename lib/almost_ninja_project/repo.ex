defmodule AlmostNinjaProject.Repo do
  use Ecto.Repo,
    otp_app: :almost_ninja_project,
    adapter: Ecto.Adapters.Postgres
end
