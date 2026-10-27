class HxrPicker < Formula
desc "One fzf picker for every coding-agent CLI: list and resume sessions across opencode, Claude Code, Codex, pi, omp, Qwen Code, Kimi, Copilot CLI and reasonix"
homepage "https://github.com/stondo/hxr"
url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-unknown-linux-musl.tar.gz"
sha256 "8c613274c97e924b7c8865ea27c977c2d70aa84aba3639f368d7e06aef3aead3"
version "0.7.0"
license any_of: ["MIT", "Apache-2.0"]

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "342d5a555af87961295641c13de8f1e9a94865faa8cbbe8c7869d819b5c18973"
  else
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "f2a6328c8d36cc6f56f745b697d017d9e485ff8d30b3e48148809fb014f7d7ff"
  end
end

on_linux do
  if Hardware::CPU.intel?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "8c613274c97e924b7c8865ea27c977c2d70aa84aba3639f368d7e06aef3aead3"
  elsif Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f6c75aab7998694c702f630d7a1af451f596cfda0794b7d441edeb2c94082a2f"
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
