class HxrPicker < Formula
desc "One fzf picker for every coding-agent CLI: list and resume sessions across opencode, Claude Code, Codex, pi, omp, Qwen Code, Kimi, Copilot CLI and reasonix"
homepage "https://github.com/stondo/hxr"
url "https://github.com/stondo/hxr/releases/download/v0.5.0/hxr-picker-0.5.0-x86_64-unknown-linux-musl.tar.gz"
sha256 "95f55ef4bca9abbc3d755c3c2b67c2273f2b6b7982b3b62df62883e8e44c5646"
version "0.5.0"
license any_of: ["MIT", "Apache-2.0"]

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.5.0/hxr-picker-0.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "39af135b8383f66ede1aab8dca4c67767c37d6457fc3cfa287499be7fdfec12b"
  else
    url "https://github.com/stondo/hxr/releases/download/v0.5.0/hxr-picker-0.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "76eb72b82c359967e098edb70eebeee61e46626c571fd7505022b721475868c7"
  end
end

on_linux do
  if Hardware::CPU.intel?
    url "https://github.com/stondo/hxr/releases/download/v0.5.0/hxr-picker-0.5.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "95f55ef4bca9abbc3d755c3c2b67c2273f2b6b7982b3b62df62883e8e44c5646"
  elsif Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.5.0/hxr-picker-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "905e130ccd9bff40c746fa86f0e33cc5e7f9836f941556c28d2a73272d7d97dc"
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
