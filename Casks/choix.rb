cask "choix" do
  version "2.0.0"
  sha256 "823c371733f7877887ab17751afaa2ee3f8b82702d39cef145a2c9ae7dda9e01"

  url "https://github.com/volodymyrsmirnov/choix/releases/download/v#{version}/Choix-#{version}-arm64.dmg"
  name "Choix"
  desc "Photo and video culling: group shoots by scene and pick favourites"
  homepage "https://github.com/volodymyrsmirnov/choix"

  depends_on arch: :arm64, macos: :sonoma

  app "Choix.app"
end
