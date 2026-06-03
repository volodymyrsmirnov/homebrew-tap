cask "diriger" do
  version "1.0.28"
  sha256 "64c7718d35d66cc46ddf9201ff0cea21a5680ad704cef62c194f70d32f7802ed"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
