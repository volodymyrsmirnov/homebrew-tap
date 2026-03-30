class DotfatherAT018 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.8"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.8/dotfather-osx-universal"
    sha256 "dca2b6d449bf1febc246f8eded7bca579b5b4c867792ae8a750c6fdb52c5495f"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.8/dotfather-linux-arm64"
      sha256 "2da800c500e6c692a591f5c18f25c8ac9aabd664147925fa0af00456170a03c3"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.8/dotfather-linux-amd64"
      sha256 "8a69773aef4b7d8e28bfa63450246d7664ecc543ae4a480324aae9a14c792126"
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
