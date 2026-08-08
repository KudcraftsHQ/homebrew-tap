# KudcraftsHQ Homebrew tap

Homebrew formulae for Kudcrafts tools.

```bash
brew tap KudcraftsHQ/tap
```

## Formulae

| Formula | |
|---|---|
| [`meta-ads-cli`](https://github.com/KudcraftsHQ/meta-ads-cli) | A command line interface to the Meta Marketing API |

```bash
brew install KudcraftsHQ/tap/meta-ads-cli
```

## How formulae get here

Nothing in `Formula/` is written by hand. Each source repository publishes its own
formula from its release pipeline — `meta-ads-cli` does it with GoReleaser on every
tagged release — so a formula in this repository is generated output.

Edit the `brews:` block in the source repository's `.goreleaser.yaml` and cut a
release; do not edit `Formula/*.rb` directly, because the next release will
overwrite it.
