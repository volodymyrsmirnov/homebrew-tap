cask "diriger" do
  version "1.0.27"
  sha256 "6b667b4322c10267e71ba916d8e346ba746b8afa3c5ef5bc9f75f6e622bd9b88"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
