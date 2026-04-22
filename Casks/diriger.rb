cask "diriger" do
  version "1.0.15"
  sha256 "ae2042dd65d316fe9b44d183e5a2413ececb66cac6bb30fbfbcb5fd35223c82a"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
