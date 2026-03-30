class DotfatherAT013 < Formula
  desc "Lightweight symlink-based dotfile manager"
  homepage "https://github.com/volodymyrsmirnov/dotfather"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-osx-universal"
    sha256 "0c15a5ec85ed22c847fd513bcef28e1ec061d402be1f1d6e6d819dbda9c4d879"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-linux-arm64"
      sha256 "7599b912b27220ccc949039bef43a5cbaeab1ad518ae74ff6036933250948190"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/dotfather/releases/download/v0.1.3/dotfather-linux-amd64"
      sha256 "4c6a62d73a4e0effd553fa9ab58127f0b3691f430659559682a81008688a1bc3"
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
