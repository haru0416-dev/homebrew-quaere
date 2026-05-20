class Quaere < Formula
  desc "Process-correction skills CLI for coding agents (Claude Code, Codex, ...)"
  homepage "https://quaere.dev/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f825603c0f4318f53f29525674b3b248e653108eaeae2ae6ce99f969306dbbfe"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a0822123dc295eded6b1b2e070a892af11af79aaaca709b038b81b97dfc4aeb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e5b9674292e5f042759093d7d065f03cab25637f7f206b24f5411f8f3977683"
    end
    on_intel do
      url "https://github.com/haru0416-dev/quaere/releases/download/v#{version}/quaere-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec9a39f951b04515309aa45197c19f3e52cb1776cb659b0389be7ddd4eb2d022"
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
