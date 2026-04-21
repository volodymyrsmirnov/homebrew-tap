cask "diriger@1.0.8" do
  version "1.0.8"
  sha256 "11ce48cbe718b7ae1ae16884dd61463b64818c0a506dd5fcc2cd834046687c81"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
