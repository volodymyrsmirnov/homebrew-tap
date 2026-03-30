class DotfatherAT012 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-osx-universal"
    sha256 "a5cdc0ee77e82fd1f12bc633cf600104bab888ffc948bbab823a8b71e3f0f01f"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-linux-arm64"
      sha256 "d9b36f6e644a60d1e1bde7fc6273affacc05627e567ebd9736455bbf99f549c8"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.2/dotfather-linux-amd64"
      sha256 "fb5a07c46e2cd8efbf4cd821008dab1e185d3e70e3ed26464e22b20ce8d2476b"
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
