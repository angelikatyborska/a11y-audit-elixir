# assumes Chromedriver is running

IO.puts("Running smoke tests")
IO.puts("\n\n")

check_output = fn (output, pattern) ->
  if not (output =~ pattern) do
    IO.puts("Expected test output to match pattern:")
    IO.inspect(pattern)
    IO.puts("Full output")
    IO.inspect(output)
    exit 1
  end
end

demo_project_path = "./demo"
demo_test_files =
  [
    "test/demo_web/integration/pages_wallaby_test.exs",
    "test/demo_web/integration/pages_hound_test.exs"
  ]

Enum.each(demo_test_files, fn demo_test_file ->
  IO.puts("checking #{demo_test_file}")

  {output, 2} = System.cmd("mix", ["test", demo_test_file], cd: demo_project_path)

  check_output.(output, ~r/3 (features|tests), 2 failures/)
  check_output.(output, "invalid page with accessibility errors")
  check_output.(output, "critical")
  check_output.(output, "Images must have alternate text")
  check_output.(output, "There is 1 node with this violation:")
  check_output.(output, "dynamic invalid page with accessibility errors that only happen after interaction")
  check_output.(output, "serious")
  check_output.(output, "Elements must meet minimum color contrast ratio thresholds")
  check_output.(output, "There are 13 nodes with this violation:")
  check_output.(output, "1. <h1>Angelika's Star Trek series ranking</h1>")
  check_output.(output, "... and 10 more nodes")

  IO.puts("ok #{demo_test_file}")
end)

IO.puts("all ok")
