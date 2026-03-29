cask "diriger" do
  version "1.0.2"
  sha256 "07dbae88347635672db52dce417ef48096f474ff96f249ce7256432f080bce48"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
