cask "choix" do
  version "2.1.0"
  sha256 "3696ef9ea63fbdf819c09a9269fa7112512506b76e08fb44d8156a3899ac49e3"

  url "https://github.com/volodymyrsmirnov/choix/releases/download/v#{version}/Choix-#{version}-arm64.dmg"
  name "Choix"
  desc "Photo and video culling: group shoots by scene and pick favourites"
  homepage "https://github.com/volodymyrsmirnov/choix"

  depends_on arch: :arm64, macos: :sonoma

  app "Choix.app"
end
