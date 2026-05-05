class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  version "0.1.7"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.7/choix-osx-universal"
    sha256 "fafe4fad12cc955b21001a6cea30555fe838e9dfca09f1471d1f5f55e205a87e"
  end

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
