class DotfatherAT014 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-osx-universal"
    sha256 "dc6862c526d1985b931ad40af3d85856d8fc5066db49ba561cc7864c73786298"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-linux-arm64"
      sha256 "cc09fd1e4f672c56ab20a977ed14bcba3faf37997dbe2ea3a88b74cbbdfd2d50"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.4/dotfather-linux-amd64"
      sha256 "b24aa5a238585f6eacadb1ae47906df36dab8aa64e8ccc84f128e3de8d1773ec"
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
