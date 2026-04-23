cask "diriger" do
  version "1.0.21"
  sha256 "17b6cc74aa85ca84d228774ce4cd3463161bf04542529ec3768ee30a07a36a37"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
