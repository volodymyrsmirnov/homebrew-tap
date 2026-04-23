cask "diriger" do
  version "1.0.20"
  sha256 "59fcbffe3065100a7435d6e99a8fd26e159f75730098a9cdc867144b108eb168"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
