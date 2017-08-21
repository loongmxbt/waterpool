# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :waterpool,
  ecto_repos: [Waterpool.Repo]

# Configures the endpoint
config :waterpool, Waterpool.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K8HQdHdZQIdo2QcHYeMYdvIeHzf9wMhbBUYFq9eJ2e12AaUUGI5n0De9CXxkH1Oo",
  render_errors: [view: Waterpool.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Waterpool.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Waterpool.User,
  repo: Waterpool.Repo,
  module: Waterpool,
  router: Waterpool.Router,
  messages_backend: Waterpool.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, Waterpool.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%

config :xain, :after_callback, {Phoenix.HTML, :raw}

# ExAdmin
config :ex_admin,
  repo: Waterpool.Repo,
  module: Waterpool,
  modules: [
    Waterpool.ExAdmin.Dashboard,
    Waterpool.ExAdmin.User,
    Waterpool.ExAdmin.Post,
    Waterpool.ExAdmin.Type,
    Waterpool.ExAdmin.Category,
    Waterpool.ExAdmin.Tag,
    Waterpool.ExAdmin.PostTag,
    Waterpool.ExAdmin.Slogan
  ]
