defmodule Identicon.Application do
  use Application

  def start(_type, _args) do
    children = [
      # Define workers and child supervisors to be supervised
      # {Identicon.Worker, arg}
    ]

    opts = [strategy: :one_for_one, name: Identicon.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
