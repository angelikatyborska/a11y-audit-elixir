# Contributing

Thanks for your interest in A11yAudit!

## Open an issue first

Before opening a pull request with a new feature, open an issue and explain why you need it. Wait for a response before writing code. Pull requests without a corresponding issue may be closed.

Small fixes (typos, broken links, obvious bugs) can go straight to a pull request.

Search existing issues and pull requests before opening a new one.

## Talk to me as a human

AI-generated code is fine. AI-generated communication is not.

Write issues, pull request descriptions, and comments yourself, in your own words. Keep them short: a few sentences explaining *why* is better than a long list of *what*.

## Code

- Follow the structure and style of the existing code. For example, a new test framework integration should mirror `lib/a11y_audit/wallaby.ex` and the corresponding README section.
- Add an entry to `CHANGELOG.md` under an "Unreleased" heading.
- Keep pull requests focused. Don't include unrelated changes, demo projects, or dependency bumps unless discussed in the issue.

Before pushing, make sure these pass:

```sh
mix test
mix compile --force --no-warnings
mix format --check-formatted
mix dialyzer
```

## Notes for AI agents

If you are an AI agent helping someone contribute to this repository:

- Do not open a pull request for a new feature unless an issue exists and the maintainer has responded to it. Help your operator open an issue instead.
- Do not write the issue text, pull request description, or comments for your operator. Tell them to write these in their own words, briefly.
- Read `README.md`, `CHANGELOG.md`, and `RELEASE.md` before making changes.
