defmodule RocketseatNlwHeatImpulseElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      RocketseatNlwHeatImpulseElixir.Repo,
      # Start the Telemetry supervisor
      RocketseatNlwHeatImpulseElixirWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: RocketseatNlwHeatImpulseElixir.PubSub},
      # Start the Endpoint (http/https)
      RocketseatNlwHeatImpulseElixirWeb.Endpoint,
      # Start a worker by calling: RocketseatNlwHeatImpulseElixir.Worker.start_link(arg)
      # {RocketseatNlwHeatImpulseElixir.Worker, arg}
      RocketseatNlwHeatImpulseElixir.Scheduler
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RocketseatNlwHeatImpulseElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RocketseatNlwHeatImpulseElixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
