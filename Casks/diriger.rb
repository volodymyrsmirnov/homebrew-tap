cask "diriger" do
  version "1.0.18"
  sha256 "e64ba188f10b22029a5a672bf0ff588ec6ea5577ba6167555cf1d205161b61c3"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
