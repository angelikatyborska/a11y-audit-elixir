# How to make a release

1. Update the version in `CHANGELOG.md`, `mix.exs`, and in the usage example in `README.md`.
2. Make sure the most up-to-date version of axe-core is included in `/priv` by running `npm run install`. A post-install script takes care of it, but it doesn't work in dependabot PRs.
3. Commit the above changes and tag the release with `git commit -m 'vX.Y.Z'`, `git tag -a 'vX.Y.Z' -m 'vX.Y.Z'`, `git push --follow-tags`.
4. Run `mix hex.publish`.
