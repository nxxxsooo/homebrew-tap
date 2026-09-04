# homebrew-tap

Homebrew tap for [`another`](https://github.com/nxxxsooo/another) — browse and
manage coding-agent sessions, or move one into another agent.

```bash
brew install nxxxsooo/tap/another
```

Homebrew expands `nxxxsooo/tap` to this repository, so there is no need to
`brew tap` first.

## Contents

`Casks/another.rb` is generated and pushed by
[GoReleaser](https://goreleaser.com) from the `another` repository on every
tagged release. Edits made here are overwritten by the next release; change
`.goreleaser.yaml` in `another` instead.

The cask covers macOS and Linux on both `amd64` and `arm64`. Release binaries
are unsigned, so a postflight hook clears `com.apple.quarantine`; without it
Gatekeeper terminates the first run.

`brew uninstall --zap another` also removes `~/.cache/another` and
`~/.config/another`, the only directories `another` creates. Sessions belonging
to your coding agents live in those agents' own stores and are never touched.

## License

[MIT](LICENSE)
