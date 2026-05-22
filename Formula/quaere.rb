class Quaere < Formula
  desc "Process-correction skills CLI for coding agents (Claude Code, Codex, ...)"
  homepage "https://quaere.dev/"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fc1ce07e276c266593bf9fe88f75a1be1ced9864d7795e7a6a391a37a358dc9c"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0fc757bed14b5cd267eadedacbe21fb62eee864f6e538a7d5295ffb00acb8b13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0e2ef32784cd378739ff4dae1bc6f6dcec2df284e73165e02c19408a963d8a7"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8c78ace7401edcfb09a1dfa90e70210d88e85da8334a4cf3d33a8a80e7cef83"
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
