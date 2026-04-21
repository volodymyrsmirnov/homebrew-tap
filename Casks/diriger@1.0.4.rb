cask "diriger@1.0.4" do
  version "1.0.4"
  sha256 "c919298e6844eb2cf8c6e5f53346d333d7158387361b220132b871d1a776f2e6"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
