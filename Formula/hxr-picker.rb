class HxrPicker < Formula
desc "One fzf picker for every coding-agent CLI: list and resume sessions across opencode, Claude Code, Codex, pi, omp, Qwen Code, Kimi, Copilot CLI, reasonix, Hermes, Goose, Gemini CLI, aider and crush"
homepage "https://github.com/stondo/hxr"
url "https://github.com/stondo/hxr/releases/download/v0.8.0/hxr-picker-0.8.0-x86_64-unknown-linux-musl.tar.gz"
sha256 "209134a7f7659f272a7440e1d7c837d0d65a91297dfb68584e661c268f3784d1"
version "0.8.0"
license any_of: ["MIT", "Apache-2.0"]

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.8.0/hxr-picker-0.8.0-aarch64-apple-darwin.tar.gz"
    sha256 "ae87c2a000d4446d535f0560411a93aed054699605d950c4c2af47775096cd15"
  else
    url "https://github.com/stondo/hxr/releases/download/v0.8.0/hxr-picker-0.8.0-x86_64-apple-darwin.tar.gz"
    sha256 "f0c1ac7085b15691d224611dfdf4b54d0a2982375962bf9dccf265df5dd1bfd3"
  end
end

on_linux do
  if Hardware::CPU.intel?
    url "https://github.com/stondo/hxr/releases/download/v0.8.0/hxr-picker-0.8.0-x86_64-unknown-linux-musl.tar.gz"
    sha256 "209134a7f7659f272a7440e1d7c837d0d65a91297dfb68584e661c268f3784d1"
  elsif Hardware::CPU.arm?
    url "https://github.com/stondo/hxr/releases/download/v0.8.0/hxr-picker-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "bc4d4fe03dc57cacc8411b494ff3c0b5efc5053507997ea5930f68a44fac8ea8"
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
