class Quaere < Formula
  desc "Process-correction skills CLI for coding agents (Claude Code, Codex, ...)"
  homepage "https://quaere.dev/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "417ee427ed74c7c7981e6a099e54f8db7d997b4e36b098b06cfd4a2aab8492da"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0aa7797cd23f79410a3de999352326accbf45598233e1061552fcfdcc7ade9b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dfb5eb2a8f48d82e97684237812d2400dcc4d0057c61fe845f6a7859426b477b"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "604c8001bc87de64d3b4514c66380fa2bfc6f998142caa47e56d19dab18d2b37"
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
