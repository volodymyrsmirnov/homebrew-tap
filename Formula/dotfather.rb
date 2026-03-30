class Dotfather < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-osx-universal"
    sha256 "376966e11a678b0589f36cc5819fa674348bc13d394113908e4b35196f8f1f5c"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-linux-arm64"
      sha256 "0f6fbf93ea5d42789bf73c349c1baf821d4ab827ff016f287c07e23c156a370f"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.0/dotfather-linux-amd64"
      sha256 "6e65e9b47f1a47554dc256df83dec08065a78695c8352624d4056d16a0791b77"
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
