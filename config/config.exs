# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mpd,
  ecto_repos: [Mpd.Repo]

# Configures the endpoint
config :mpd, MpdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ct0SwD+lm4K1AXPfi1Q20PhJjL+8tWjusuPWlMCyJyCRbvAcKeuvbSwTakjqSczt",
  render_errors: [view: MpdWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mpd.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SdQ4WK8UvPmhFoxORdLqovyhKjSlvECG"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
