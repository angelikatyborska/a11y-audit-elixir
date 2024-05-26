import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :demo, DemoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "D2jg+Cv2EmgPyq+gr/n6eT6RejYNCy/11TwlsdIBUb2Ipiux0Lx2JcpPxASdBKMJ",
  server: true

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
