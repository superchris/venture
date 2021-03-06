use Mix.Config

# For production, we configure the host to read the PORT
# from the system environment. Therefore, you will need
# to set PORT=80 before running your server.
#
# You should also configure the url host to something
# meaningful, we use this information when generating URLs.
#
# Finally, we also include the path to a manifest
# containing the digested version of static files. This
# manifest is generated by the mix phoenix.digest task
# which you typically run after static files are built.
config :venture, Venture.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [host: System.get_env("HOSTNAME"), port: 443]

# Do not print debug messages in production
config :logger, level: :info

# Finally import the config/prod.secret.exs which pulls secrets from the
# environment, or is versioned separately.
import_config "prod.secret.exs"
