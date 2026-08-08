# KudcraftsHQ Homebrew tap

Homebrew formulae for Kudcrafts tools.

```bash
brew tap KudcraftsHQ/tap
```

## Casks

| Cask | |
|---|---|
| [`meta-ads-cli`](https://github.com/KudcraftsHQ/meta-ads-cli) | A command line interface to the Meta Marketing API |

```bash
brew install --cask KudcraftsHQ/tap/meta-ads-cli
```

These are casks rather than formulae because they install prebuilt binaries.
GoReleaser deprecated formula generation for that case — a formula that installs
a precompiled binary was always pretending to build from source.

## How casks get here

Nothing in `Casks/` is written by hand. Each source repository publishes its own
cask from its release pipeline — `meta-ads-cli` does it with GoReleaser on every
tagged release — so everything here is generated output.

Edit the `homebrew_casks:` block in the source repository's `.goreleaser.yaml` and
cut a release; do not edit `Casks/*.rb` directly, because the next release will
overwrite it.
