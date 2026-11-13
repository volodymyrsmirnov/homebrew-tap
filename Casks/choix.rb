cask "choix" do
  version "2.2.1"
  sha256 "6f0ea94b9a5e08cc30bed360124681887c9bb0141905e4f1bd87be86f5bff30a"

  url "https://github.com/volodymyrsmirnov/choix/releases/download/v#{version}/Choix-#{version}-arm64.dmg"
  name "Choix"
  desc "Photo and video culling: group shoots by scene and pick favourites"
  homepage "https://github.com/volodymyrsmirnov/choix"

  depends_on arch: :arm64, macos: :sonoma

  app "Choix.app"
end
