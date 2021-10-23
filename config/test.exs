import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :rocketseat_nlw_heat_impulse_elixir, RocketseatNlwHeatImpulseElixir.Repo,
  username: "postgres",
  password: "postgres",
  database: "rocketseat_nlw_heat_impulse_elixir_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rocketseat_nlw_heat_impulse_elixir, RocketseatNlwHeatImpulseElixirWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "krY5BLvXTTrhveerSzocrSeRqIdgS8arbKBYv6x7jScyTM8TkkNcJlVJDjbRYJ0z",
  server: false

# In test we don't send emails.
config :rocketseat_nlw_heat_impulse_elixir, RocketseatNlwHeatImpulseElixir.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
