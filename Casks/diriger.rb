cask "diriger" do
  version "1.0.30"
  sha256 "ea8b981d6b7b0edd05f5f8a6359fbce34915ba72a4952390a8f86231a3e026cb"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: :sonoma

  app "Diriger.app"
end
