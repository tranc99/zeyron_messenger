# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chatreact,
  ecto_repos: [Chatreact.Repo]

# Configures the endpoint
config :chatreact, Chatreact.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XhbZeYQIAc9BaAd6uesLd4VfEAQK14YLEJ8wlPSNN2hrgWhQoAGCy3BviJaTIzra",
  render_errors: [view: Chatreact.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatreact.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
