cask "diriger" do
  version "1.0.26"
  sha256 "f9847c23b70dcf2df3e74bc24b68fe37f3cba6d28f65c92611558441cca81716"

  url "https://github.com/volodymyrsmirnov/diriger/releases/download/v#{version}/Diriger-#{version}.dmg"
  name "Diriger"
  desc "Menu bar app for quickly switching between Google Chrome profiles"
  homepage "https://github.com/volodymyrsmirnov/diriger"

  depends_on macos: ">= :sonoma"

  app "Diriger.app"
end
