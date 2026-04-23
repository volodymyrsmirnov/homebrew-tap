cask "diriger" do
  version "1.0.19"
  sha256 "d398375b3162158a7bd6750eac46493dfb55a13823dbe25594d89b62458b3b7e"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
