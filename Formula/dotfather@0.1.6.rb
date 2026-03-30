class DotfatherAT016 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.6/dotfather-osx-universal"
    sha256 "da39f3fbb2612932b59d72c3fb81ec9ec14092f3fb5e75cf702912949351c13b"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.6/dotfather-linux-arm64"
      sha256 "b0e1407371625d125899413016ee04a3362e3ddeaaa8f28703ad4827713ab0d3"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.6/dotfather-linux-amd64"
      sha256 "866bef54ea40ca5ee46716a34040241450c7d8fbdca9a1a6b2a338ca4b5f964c"
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
