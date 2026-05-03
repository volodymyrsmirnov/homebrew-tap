cask "diriger" do
  version "1.0.25"
  sha256 "883ed0d4c3dbae45702c3774d9c3aa4a869bceb0489703c203ee7bb27d435f32"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
