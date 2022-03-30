defmodule Caitlyn.MixProject do
  use Mix.Project

  def project do
    [
      app: :caitlyn,
      version: "0.1.0",
      description: "Caitlyn is a League of Legends API wrapper for Elixir.",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),

      # ExDoc
      name: "Caitlyn",
      source_url: "https://github.com/Leastrio/Caitlyn",
      docs: [
        main: "Caitlyn",
        logo: "./assets/caitlyn.png"
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.3"}
    ]
  end

  defp package do
    [
      name: "caitlyn",
      licenses: ["MIT"],
      source_url: "https://github.com/Leastrio/Caitlyn",
      links: %{"Github" => "https://github.com/Leastrio/Caitlyn"}
    ]
  end
end
