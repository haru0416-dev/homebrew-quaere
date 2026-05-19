# homebrew-quaere

Homebrew tap for the [Quaere](https://quaere.dev/) CLI — process-correction
skills for coding agents (Claude Code, Codex, …).

## Install

```bash
brew install haru0416-dev/quaere/quaere
quaere install
```

Or, equivalently:

```bash
brew tap haru0416-dev/quaere
brew install quaere
quaere install
```

The second command (`quaere install`) extracts the skill set to
`~/.claude/skills/`. Skip it only if you only want the CLI without the
skills.

## Verify

```bash
quaere version
quaere list
quaere doctor
```

## Alternatives

If you do not use Homebrew:

```bash
# curl one-liner with SHA256 verification
curl -fsSL https://quaere.dev/install.sh | sh

# or from source via cargo
cargo install quaere-cli && quaere install
```

## How this tap is maintained

This tap is the canonical Homebrew distribution for Quaere. Formula
versions track release tags on
[`haru0416-dev/quaere`](https://github.com/haru0416-dev/quaere).

Each release's binaries and `SHA256SUMS` are uploaded by the upstream
release workflow; the formula here pulls those exact tarballs by URL and
verifies the recorded SHA256.

## License

The tap repository is MIT. The Quaere project itself is MIT — see the
upstream [`LICENSE`](https://github.com/haru0416-dev/quaere/blob/main/LICENSE).
