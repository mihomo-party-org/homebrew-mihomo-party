cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.20"
  sha256 arm:   "7fb3b971ac107d167dbf5a6d787354c3126034e7617dda255c497c7d6c04c89b",
         intel: "29e0c57fb555530d36cb3acd9a069e4def4e3a7cbe52b8b73c3ca07b21bbae07"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
