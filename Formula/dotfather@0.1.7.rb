class DotfatherAT017 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.7"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.7/dotfather-osx-universal"
    sha256 "e7a7d520b5322a4546f61512a9495fe8835d118bc26989b7de281ecb86135fde"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.7/dotfather-linux-arm64"
      sha256 "53d65b1216f89ad62be1121fea2a5ae058ef5f7a96c4738bfa40875d94c678de"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.7/dotfather-linux-amd64"
      sha256 "481809ad6c304f8451162142e1ee142a80144f9e427e27f4fd9b7e10ad238b19"
    end
  end

  def install
    binary = Dir["dotfather-*"].first
bin.install binary => "dotfather"

  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dotfather --version")
  end
end
