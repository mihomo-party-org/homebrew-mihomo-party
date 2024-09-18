cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.21"
  sha256 arm:   "d8847748779f02fd863b7a24b5c2e31131d8fc4b07d6424b7c59f7605701c03a",
         intel: "81d744560e011555425096fccd0774d5453fc5de51256e96e5bff6b00e116de4"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
