defmodule Mix.Tasks.Greet do
  use Mix.Task

  def run(args) do
    [name] = args
    HelloWorld.greet(name)
  end
end
