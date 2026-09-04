# homebrew-tap

Homebrew tap for [`another`](https://github.com/nxxxsooo/another) — browse and
manage coding-agent sessions, or move one into another agent.

```bash
brew trust nxxxsooo/tap
brew install nxxxsooo/tap/another
```

Homebrew expands `nxxxsooo/tap` to this repository, so there is no need to
`brew tap` first.

Since Homebrew 6, `HOMEBREW_REQUIRE_TAP_TRUST` defaults to on and Homebrew
refuses to load formulae or casks from an untrusted third-party tap, so the
`brew trust` line is required rather than advisory. It records this tap in
`~/.homebrew/trust.json`. Trusting a tap means agreeing to run code it
ships; read the cask first if that matters to you. Older Homebrew versions
load the tap directly and do not have the `trust` command.

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
