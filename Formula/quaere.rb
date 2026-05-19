class Quaere < Formula
  desc "Process-correction skills CLI for coding agents (Claude Code, Codex, ...)"
  homepage "https://quaere.dev/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6731e66b6b71de07f2d401fd2006d91fa1fc0131076217e2f6cc672091839df1"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2de8837fd5ed314e492359ced523433b6852ee4af154144d45569329d802b244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71e78fae8577cef3f0de555eab9543496c3f0cfbe24097ee38b10aabe8516a4c"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3730ce524447798ed2171bc74be22c195d0ae71e3beb2ab90dbe20fe9ea7d840"
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
