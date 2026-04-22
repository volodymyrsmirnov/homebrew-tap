cask "diriger" do
  version "1.0.13"
  sha256 "1a0a827218d40d298ccfce0e398633eff48bf7015001b396c4c91bbb8b840c2b"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
