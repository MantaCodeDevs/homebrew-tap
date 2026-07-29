class Mna < Formula
  desc "Command-line client for My Next Adventure trip planning"
  homepage "https://github.com/MantaCodeDevs/mna-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.1/mna-darwin-arm64.tar.gz"
      sha256 "74da06b2eb201da2b45408317aabe8591426d531e6d0de8be6e4404e13c37cf3"
    else
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.1/mna-darwin-x64.tar.gz"
      sha256 "07cbb55811f85152573f5d2feb6b4549df1f82bd76ce67b18c6973e0124446e5"
    end
  end

  on_linux do
    url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.1/mna-linux-x64.tar.gz"
    sha256 "ebef2610d507f948f969e88c2a3287ba828a4d758970cc55e879fedc5d2058e1"
  end

  def install
    binary = Dir["mna-*"].first
    bin.install binary => "mna"
  end

  test do
    assert_match "mna", shell_output("#{bin}/mna --version")
  end
end
