class HxrPicker < Formula
desc "One fzf picker for every coding-agent CLI: list and resume sessions across opencode, Claude Code, Codex, pi, omp, Qwen Code, Kimi, Copilot CLI and reasonix"
homepage "https://github.com/stondo/hxr"
url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-unknown-linux-musl.tar.gz"
sha256 "aea47e2fea6cf13ae5efa01452268e458efb92ab0d681dec8eb294c977322e9a"
version "0.7.0"
license any_of: ["MIT", "Apache-2.0"]

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-aarch64-apple-darwin.tar.gz"
    sha256 "4065224f08de7223f194ba6faad94df2f94380eded4da0cd1be6842196ac4a5d"
  else
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-apple-darwin.tar.gz"
    sha256 "7947df175aa0e8fc5171078621457e12dcdf529c9ac9b8da7d3dbc4597b88776"
  end
end

on_linux do
  if Hardware::CPU.intel?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "aea47e2fea6cf13ae5efa01452268e458efb92ab0d681dec8eb294c977322e9a"
  elsif Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.7.0/hxr-picker-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1a5bac529194c6b590d9bcf2c8cf29255efcdc687750ff115c030668b906fe58"
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
