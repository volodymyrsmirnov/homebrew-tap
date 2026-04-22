cask "diriger" do
  version "1.0.16"
  sha256 "a1e0201186ddd531ebfbd166a8927288c25e4966bffcc1f71c9935b1d4cddf33"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
