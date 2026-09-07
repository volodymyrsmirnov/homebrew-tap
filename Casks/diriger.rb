cask "diriger" do
  version "1.0.29"
  sha256 "c94b1bda02189f252f39985b8e7f132777d45afa3fa1069aa6bdc6d5e338c89c"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: :sonoma

  app "Diriger.app"
end
