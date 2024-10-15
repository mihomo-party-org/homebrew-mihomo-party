cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8"
  sha256 arm:   "06029e63efafdefe3a47705ebdb0daa1f616356d1ac02704b73a483244e85a13",
         intel: "44ca90969db95e42872aed64c39c0a8e897b6109a8444f356f055a744aff57d8"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
