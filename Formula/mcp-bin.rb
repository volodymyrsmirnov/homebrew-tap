class McpBin < Formula
  desc "Turn MCP server tools into CLI commands"
  homepage "https://github.com/volodymyrsmirnov/mcp-bin"
  version "0.2.4"
  license "MIT"

  on_macos do
    url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.4/mcp-bin-osx-universal"
    sha256 "ffd0a2faf8ce72b0565fdd117f797eee7615251f0801502f53a4fa04882dea40"
  end

  on_linux do
    on_arm do
      url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.4/mcp-bin-linux-arm64"
      sha256 "eb3b6189fed89e54b56a34f75decdf4867005d3de9c2df2b867c80d89c9d0b0d"
    end
    on_intel do
      url "https://github.com/volodymyrsmirnov/mcp-bin/releases/download/v0.2.4/mcp-bin-linux-amd64"
      sha256 "01f648be0eca44409fff6163232569ab8f0e19b1e66474c92673f00feba9af2b"
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
