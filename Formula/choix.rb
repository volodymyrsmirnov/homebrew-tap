class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.1/choix-osx-universal"
    sha256 "9a0b7dea9f2bf36da4f71b3ba2a7242a8677329e1b81734129b2ed7010647b95"
  end

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
