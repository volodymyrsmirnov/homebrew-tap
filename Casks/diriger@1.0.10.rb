cask "diriger@1.0.10" do
  version "1.0.10"
  sha256 "34c52b779cb634628db942c2614fb94a7adb91ec1e0c98a91ce2b223fed802fb"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
