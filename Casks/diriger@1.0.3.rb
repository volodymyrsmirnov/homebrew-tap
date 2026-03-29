cask "diriger@1.0.3" do
  version "1.0.3"
  sha256 "31da310120515d1d4f83e4340fdfed8a198285339a121a4f8ed1542f89b5f4ea"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
