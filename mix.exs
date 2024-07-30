defmodule A11yAudit.MixProject do
  use Mix.Project

  def project do
    [
      app: :a11y_audit,
      version: "0.2.0",
      elixir: "~> 1.13",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      name: "A11y Audit",
      source_url: "https://github.com/angelikatyborska/a11y-audit-elixir/",
      description: description(),
      package: package(),
      docs: docs(),
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
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false},
      {:credo, "~> 1.0", only: [:dev], runtime: false}
    ]
  end

  defp aliases() do
    [
      lint: ["compile --force --warnings-as-errors", "format", "credo", "dialyzer"]
    ]
  end

  defp description() do
    "Automated accessibility testing for Elixir web applications using axe-core"
  end

  defp package() do
    [
      name: "a11y_audit",
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE* CHANGELOG*),
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/angelikatyborska/a11y-audit-elixir",
        "Changelog" =>
          "https://github.com/angelikatyborska/a11y-audit-elixir/blob/main/CHANGELOG.md"
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      assets: %{"docs/assets" => "docs/assets"},
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end
end
