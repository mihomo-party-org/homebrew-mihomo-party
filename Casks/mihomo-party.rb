cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "9c3f1deb3b3aadc4edc76eed98cdf8676b9cbdbde3811ed27c9f7cc9dd62dff6",
         intel: "6914d9f6c99579c3d96325dd68c97a4a2bc385da058aa723392ba55263a78eec"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/Mihomo Party"
end
