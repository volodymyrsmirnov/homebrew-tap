cask "diriger" do
  version "1.0.12"
  sha256 "6ff3da3498f501e2083d816839c52607d0263d196d4dd0cce99a40930e1aedac"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
