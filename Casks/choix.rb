cask "choix" do
  version "2.2.0"
  sha256 "86d13215ecc5bdf55fd455cdef1147054174c3fa48f47003cdf05cec776245cf"

  url "https://github.com/volodymyrsmirnov/choix/releases/download/v#{version}/Choix-#{version}-arm64.dmg"
  name "Choix"
  desc "Photo and video culling: group shoots by scene and pick favourites"
  homepage "https://github.com/volodymyrsmirnov/choix"

  depends_on arch: :arm64, macos: :sonoma

  app "Choix.app"
end
