class McpBinAT023 < Formula
  desc "Turn MCP server tools into CLI commands"
  homepage "https://github.com/volodymyrsmirnov/mcp-bin"
  version "0.2.3"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.3/mcp-bin-osx-universal"
    sha256 "0eb1c2869518bb864ccb981df89804c47ee507707b976314d28445255fc9cd26"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.3/mcp-bin-linux-arm64"
      sha256 "6c3ec7db9aa6d6a888415602ed45762c8919aea0aa7371b93b97e7b353902f75"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.3/mcp-bin-linux-amd64"
      sha256 "5b3de257455ad7d40bd390226089dcfcc9cf71c6e80c5367923c53e76e7af8d3"
    end
  end

  def install
    binary = Dir["mcp-bin-*"].first
    bin.install binary => "mcp-bin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-bin --version")
  end
end
