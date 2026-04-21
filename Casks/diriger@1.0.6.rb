cask "diriger@1.0.6" do
  version "1.0.6"
  sha256 "649163ba9604088df245b7171c95c059701655cc348febbf1ba200deefa0cd8c"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
