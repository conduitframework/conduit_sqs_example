defmodule ConduitSqsExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :conduit_sqs_example,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ConduitSqsExample.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:conduit, "~> 0.11.0"},
      {:conduit_sqs, "~> 0.2"}
    ]
  end
end
