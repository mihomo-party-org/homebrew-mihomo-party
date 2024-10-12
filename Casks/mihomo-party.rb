cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.6"
  sha256 arm:   "151bdc35cb526d92927177e8483d10d8170dcd07bd766fb8445814d0fd822158",
         intel: "7fd5837dbc719c708066ee578397b665aa4ac0832b41c46a1f64c70ff68ef21f"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
