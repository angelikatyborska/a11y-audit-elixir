ExUnit.start()
{:ok, _} = PhoenixTest.Playwright.Supervisor.start_link()
Application.put_env(:phoenix_test, :base_url, DemoWeb.Endpoint.url())
