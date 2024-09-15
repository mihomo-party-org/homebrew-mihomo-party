cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.19"
  sha256 arm:   "8df757340374f03d33f09c74fd60d4963da70dd4888e55aa866c87eb5ff5ab66",
         intel: "0d41e10103a6bf685d3554b25e35d10637e325a6065e075f4ae16a0b3b7c368d"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
