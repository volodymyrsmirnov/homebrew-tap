class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.4/choix-osx-universal"
    sha256 "08e3c9d2dc09e5bb185c1e30bf9a7fae8eabb1b0051726b20d5938babf1eea2a"
  end

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
