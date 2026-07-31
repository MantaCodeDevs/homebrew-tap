class Mna < Formula
  desc "Command-line client for My Next Adventure trip planning"
  homepage "https://github.com/MantaCodeDevs/mna-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.2.0/mna-darwin-arm64.tar.gz"
      sha256 "aad056a2ba62725d68080f9a1798ca3c82b16915e07683cec9039af45d3791f7"
    else
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.2.0/mna-darwin-x64.tar.gz"
      sha256 "bf860b058ee413c29e2eebc00ea49db40976ec1b94e6e9385cdbee98dbaf437c"
    end
  end

  on_linux do
    url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.2.0/mna-linux-x64.tar.gz"
    sha256 "0bd47d226e9570753d2ae4de1daa339be2e053572e1172161cd1ef304238e696"
  end

  def install
    binary = Dir["mna-*"].first
    bin.install binary => "mna"
  end

  test do
    assert_match "mna", shell_output("#{bin}/mna --version")
  end
end
