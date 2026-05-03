cask "diriger" do
  version "1.0.24"
  sha256 "f2053580d6308f72a64b34cca0ff6c24789d50f7d3b1b3a8dd5b6a97fc5310be"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
