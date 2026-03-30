class DotfatherAT012 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-osx-universal"
    sha256 "39f2e297b1a1dad0c150b51bba261ab453ca6a01a700351d667535e87f6a2b91"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-linux-arm64"
      sha256 "8fa5bb5a4c5adcbce6cbf255cacb945b5429c32059d027497fa5ee5460f04bc9"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-linux-amd64"
      sha256 "92756543fbc318b8d386404d6c93efa77127fcb211e02b81bcbe5c49a65317d3"
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
