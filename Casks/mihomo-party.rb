cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.7"
  sha256 arm:   "5bdb02e35694362b12c92980d6406970db3c6cfc660f0693da9c9a80235631cc",
         intel: "1505a9eaf36fba8d689197043354733346bebd3592ce1aca3337ed6c15661cff"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
