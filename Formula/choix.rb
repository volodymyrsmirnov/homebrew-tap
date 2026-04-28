class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.2/choix-osx-universal"
    sha256 "b44a7e155f82da69f3db1fbf421804fa5388b4ed8d3651e9dbd8f2434abe63aa"
  end

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
