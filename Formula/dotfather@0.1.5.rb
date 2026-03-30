class DotfatherAT015 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.5"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-osx-universal"
    sha256 "c9e74896b369ab8ecbc86457fbe6e08bc1fb14125fc94969b5579a04f4e33f2e"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-linux-arm64"
      sha256 "f46a7f8c92debf574142cca355060b8822fac4cb977932b5b36f297c11a42796"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.5/dotfather-linux-amd64"
      sha256 "5b639fc0dd048b0149b1f841ad87dc13b8435718c17417de78d9e0ac8d2c7a66"
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
