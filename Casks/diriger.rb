cask "diriger" do
  version "1.0.17"
  sha256 "fbcbda7a5d6ab9540b6302fd922f8910677d76ae29225b386c66ef33b18b1189"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
