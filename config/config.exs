# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :expenses_recorder,
  ecto_repos: [ExpensesRecorder.Repo]

# Configures the endpoint
config :expenses_recorder, ExpensesRecorder.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "73b357rSszfdR7J1hp+65jX6E4G9fAiEJG4lEY2V0ZiXFy/QlzxIH1L0zYfY++h1",
  render_errors: [view: ExpensesRecorder.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExpensesRecorder.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
