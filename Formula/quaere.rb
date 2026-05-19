class Quaere < Formula
  desc "Process-correction skills CLI for coding agents (Claude Code, Codex, ...)"
  homepage "https://quaere.dev/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bf9bfd3e4aabd6cedc96543372522acb39111084e059780a5173a623d55c2ba3"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d85294bcf6dc1489e2a4c22e9ba242ef23120c8bce5cd2cef7f60192b9b4f0c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2524fa84630a6692e8ef52914c38574b764c496a0c435bfe087c26abb0b54503"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7399a8a84d3c639069829c45292eb2f9f945fd8c97e0edf15b9298ab33bfc04"
    end
  end

  def install
    bin.install "quaere"
  end

  def post_install
    ohai "Quaere CLI is installed."
    ohai "To populate ~/.claude/skills/, run: quaere install"
    ohai "See https://quaere.dev/ for documentation."
  end

  test do
    assert_match(/quaere #{version}/, shell_output("#{bin}/quaere version"))
  end
end
