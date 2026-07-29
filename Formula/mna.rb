class Mna < Formula
  desc "Command-line client for My Next Adventure trip planning"
  homepage "https://github.com/MantaCodeDevs/mna-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-darwin-arm64.tar.gz"
      sha256 "3e0e281e7c54e58ddb544fac813168bbc1ca6d7efb49c5bc92d8b3585599fe24"
    else
      url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-darwin-x64.tar.gz"
      sha256 "a51ccc4bdbcebea613b62744ecb77a662aaed45272ccc13190820199a6948546"
    end
  end

  on_linux do
    url "https://github.com/MantaCodeDevs/mna-cli/releases/download/v0.1.0/mna-linux-x64.tar.gz"
    sha256 "60afd31d9b541894ca0f4ea93495926bec341f03580c5138cbc993c7cbf04b0c"
  end

  def install
    bin.install "mna"
  end

  test do
    assert_match "mna", shell_output("#{bin}/mna --version")
  end
end
