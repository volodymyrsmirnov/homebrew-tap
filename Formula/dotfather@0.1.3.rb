class DotfatherAT013 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-osx-universal"
    sha256 "833b0a98332e6d98552e2953d3f1d6426cbc7c732d5fe8c102e6929b382ba4bf"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-linux-arm64"
      sha256 "ab6115b15afd8b7c4792240652ef2745ef9f7912774ffb6f6057cf2f7681dddf"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-linux-amd64"
      sha256 "50c3182b379474b3c0c994e18075afe8de15d83c4163336cbf88d1eed622c10a"
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
