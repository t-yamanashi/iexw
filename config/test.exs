import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :iexw, IexwWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "6tqrQxOkj8/kqnYyh/Xykh9U/f4L1F8Aqp9Dg58RGlSZmv8RDImL+kwlKPBvDXXb",
  server: false

# In test we don't send emails.
config :iexw, Iexw.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
