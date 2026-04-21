cask "diriger@1.0.5" do
  version "1.0.5"
  sha256 "265abfe27a7656d5cbf04e41c925064d576c541a932776a72ea76f282814dbfd"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
