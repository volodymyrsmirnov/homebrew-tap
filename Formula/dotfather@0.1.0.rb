class DotfatherAT010 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-osx-universal"
    sha256 "76534b401519614c5ddd11db3629bd2195c3fabf105221cc654dc1f1b243cf93"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-linux-arm64"
      sha256 "0b94c5f006f619d86dee1e6f5d2dc95a21f1985062f1340df06a0ea864b31f5b"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-linux-amd64"
      sha256 "da3c1089e98d769d667ccefe93e808ca75ff3e73f7e815ef23d4c53e047a4cf5"
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
