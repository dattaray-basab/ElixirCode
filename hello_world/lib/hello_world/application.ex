defmodule HelloWorld.Application do
  use Application

  def start(_type, _args) do
    children = [
      # Add any worker processes here
    ]

    opts = [strategy: :one_for_one, name: HelloWorld.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
