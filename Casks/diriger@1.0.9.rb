cask "diriger@1.0.9" do
  version "1.0.9"
  sha256 "bc2830bfcc4dd7d4a231ff9d949daddf315e19265ae1b82a36dd2362ead79ac0"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
