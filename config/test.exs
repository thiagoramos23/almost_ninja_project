use Mix.Config

# Configure your database
config :almost_ninja_project, AlmostNinjaProject.Repo,
  username: "postgres",
  password: "postgres",
  database: "almost_ninja_project_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :almost_ninja_project, AlmostNinjaProjectWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
