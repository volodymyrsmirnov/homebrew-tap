class DotfatherAT014 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-osx-universal"
    sha256 "860c121537f805feb124f0e153e756eec90f3e8e48332c84d0ec51a0a0bcdd9f"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-linux-arm64"
      sha256 "af3852f9901078382289bf16cc5580faf3aa6dce5cee7ecc4468181888c711d5"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-linux-amd64"
      sha256 "88f8879fb89b024e6073f2b7b9e28f097d75f6638a19d58ab1a5922c6e698dc8"
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
