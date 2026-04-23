cask "diriger" do
  version "1.0.23"
  sha256 "5aeb1df9e2b9a6dc6621ce3bf494a60cadaae0b631df179b5c5895a43cdd6003"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
