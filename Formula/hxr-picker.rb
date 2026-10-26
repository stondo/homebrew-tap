class HxrPicker < Formula
desc "One fzf picker for every coding-agent CLI: list and resume sessions across opencode, Claude Code, Codex, pi, omp, Qwen Code, Kimi, Copilot CLI and reasonix"
homepage "https://github.com/stondo/hxr"
url "https://github.com/stondo/hxr/releases/download/v0.6.0/hxr-picker-0.6.0-x86_64-unknown-linux-musl.tar.gz"
sha256 "0fd88ab690e2e280362a26267c88bd6606b9e72ff6519b4a88677c5ec60ddc0e"
version "0.6.0"
license any_of: ["MIT", "Apache-2.0"]

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.6.0/hxr-picker-0.6.0-aarch64-apple-darwin.tar.gz"
    sha256 "bf6fca049ebcb347d20eddbc2b3fbebe3f55cb7270061d7cb351745048fb4e8c"
  else
    url "https://github.com/stondo/hxr/releases/download/v0.6.0/hxr-picker-0.6.0-x86_64-apple-darwin.tar.gz"
    sha256 "fdeba83c5da3f5f9d2392a0c690d9ba5d9db662c6c888f533cadd3d330251514"
  end
end

on_linux do
  if Hardware::CPU.intel?
    url "https://github.com/stondo/hxr/releases/download/v0.6.0/hxr-picker-0.6.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "0fd88ab690e2e280362a26267c88bd6606b9e72ff6519b4a88677c5ec60ddc0e"
  elsif Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.6.0/hxr-picker-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "73adf348c0fcb611d31e3612afa61d5fdc1eac9f7ffe5a8aa1a9ef7788354cdf"
  end
end

def install
  bin.install "hxr"
end

def caveats
  <<~EOS
    hxr requires fzf: brew install fzf
  EOS
end
end
