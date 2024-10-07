cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "3307e61e602aa7945e72feb4bed4bc311febde338e53763ce392349d874a807d",
         intel: "d9644fccdfab74883e5a640596b54e00af27c1adbf85ea1e93c0049686f3a362"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
