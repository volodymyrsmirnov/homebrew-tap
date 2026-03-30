class DotfatherAT011 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-osx-universal"
    sha256 "3289f1a2602f63c77a278bbbb7cc488ebd04ab4ab6dd4063da7745d6e01c02dd"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-linux-arm64"
      sha256 "0a6138cbd83eebc5a77925ea8f94674a9e9aeadce91855c71c88d5bbdb1a85d3"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.1/dotfather-linux-amd64"
      sha256 "0e449f5f33ac0d0395874ae34e39fdf4b4a3743396662e6487dd388dd9c0c767"
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
