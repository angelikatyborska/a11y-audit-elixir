defmodule A11yAudit.MixProject do
  use Mix.Project

  def project do
    [
      app: :a11y_audit,
      version: "0.1.0",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [plt_add_apps: [:ex_unit]]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/fixtures"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # json is used in tests by this library, it's also part of the optional dependencies
      # which prevents me from using `only: [:test]`
      # {:jason, "~> 1.4", only: [:test]},
      {:wallaby, "~> 0.30", optional: true},
      {:hound, "~> 1.1", optional: true},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
