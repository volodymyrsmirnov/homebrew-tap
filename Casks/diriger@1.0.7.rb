cask "diriger@1.0.7" do
  version "1.0.7"
  sha256 "6269542365a0969d0c7dff0a12903690674eb089a4d145427b332b7e704bb637"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
