defmodule Identicon.Mixfile do
  use Mix.Project

  def project do
    [
      app: :identicon,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      elixirc_options: [warnings_as_errors: false] # Adjust as needed
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto] # Add :crypto here
    ]
  end

  defp deps do
    [
      {:egd, git: "https://github.com/erlang/egd.git"} # Ensure this is inside a list
    ]
  end
end
