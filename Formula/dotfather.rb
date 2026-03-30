class Dotfather < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-osx-universal"
    sha256 "ef87a04fdd0d1c7eb5c0e2e7a2450b8d8e27ec60dceb214cf026aa372b2b170c"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-linux-arm64"
      sha256 "c2714bddbba01362ec34cfebb0ef8100a8d9bb66c29fb96012685c6c7aab8390"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-linux-amd64"
      sha256 "1afd2d9c99f391b42f79157e14a219c2a869d34fcbd668a8b2babea6f6bf2845"
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
