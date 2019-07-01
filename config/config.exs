# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :almost_ninja_project,
  ecto_repos: [AlmostNinjaProject.Repo]

# Configures the endpoint
config :almost_ninja_project, AlmostNinjaProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "50H3lvRPUjMNZ4xJjl5jV/QU40Qily+Y/LcBJo9O99qNaxO15dkGmhUCT7yLiCuR",
  render_errors: [view: AlmostNinjaProjectWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AlmostNinjaProject.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
