cask "diriger@1.0.11" do
  version "1.0.11"
  sha256 "0ac8d0dfbfbb3d3d229701b1bd3c034aa638f0da18c4e05d5f942dc3095b02a5"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
