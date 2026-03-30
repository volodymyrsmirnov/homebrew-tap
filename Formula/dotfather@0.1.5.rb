class DotfatherAT015 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-osx-universal"
    sha256 "a4511ae257641af92be8fb01f54d39bf4e0b45b4c0b484b69080873dbb6821ea"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-linux-arm64"
      sha256 "351c20991fe070904a774dca0795de53c60f1fb3597ad20679287f298774dfd3"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-linux-amd64"
      sha256 "52dc99c24f994e2ea4d6dba4fff79022c851835420a8eee600f4b7ab4f26f549"
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
