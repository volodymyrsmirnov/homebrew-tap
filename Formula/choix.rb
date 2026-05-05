class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  version "0.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.5/choix-osx-universal"
    sha256 "2a5aa377dd35de7ef5864f0a7b2050b74d719617745c642b9fed957f91b25e53"
  end

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
