class Mna < Formula
  desc "Command-line client for My Next Adventure trip planning"
  homepage "https://github.com/MantaCodeDevs/mna-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.2/mna-darwin-arm64.tar.gz"
      sha256 "a2baad5a3ddc779e0a2d9ad1cf67a1a1456b22e9066faa4991d49177b65f06e8"
    else
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.2/mna-darwin-x64.tar.gz"
      sha256 "409890f5724c13976b219047fde44ab5c5016d2401b57e9dcc59a9fed58a155a"
    end
  end

  on_linux do
    url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.2/mna-linux-x64.tar.gz"
    sha256 "124a24900e0606c4c5ee22ab777dc5ebc88bf240e739d8ba63066b4fab6928a9"
  end

  def install
    binary = Dir["mna-*"].first
    bin.install binary => "mna"
  end

  test do
    assert_match "mna", shell_output("#{bin}/mna --version")
  end
end
