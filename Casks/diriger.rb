cask "diriger" do
  version "1.0.22"
  sha256 "33092b4e052bcf4cc033e80d53d684cf68b02ee46acd872b3190c3f886f7b305"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
