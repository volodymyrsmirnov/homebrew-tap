cask "diriger" do
  version "1.0.14"
  sha256 "7142458dbd6e8cf430033832ccfffb01ced8c50c6dc7cbeded6fe96e6601bb2c"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
