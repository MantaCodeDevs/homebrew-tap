class Mna < Formula
  desc "Command-line client for My Next Adventure trip planning"
  homepage "https://github.com/MantaCodeDevs/mna-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-darwin-arm64.tar.gz"
      sha256 "924c422abb56a547f718b2f36aeb42f7e0ea71a24322a49bb7426cdddefa036e"
    else
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-darwin-x64.tar.gz"
      sha256 "a53eada01d23e7eecf557bfbacde9e5db9d96236014ad60c91779b68421112f9"
    end
  end

  on_linux do
    url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-linux-x64.tar.gz"
    sha256 "199a476fbe15b1c74610ee03dba8daa1ce1515b5fa8fbe8bb090d690b69e9683"
  end

  def install
    binary = Dir["mna-*"].first
    bin.install binary => "mna"
  end

  test do
    assert_match "mna", shell_output("#{bin}/mna --version")
  end
end
