cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.3"
  sha256 arm:   "952441ee2c270b47b641a075c5df3314674345187d02579b69abbcbe1b927f50",
         intel: "e147f10761976c7c729f206592d4e15aa3dabe726121f4f91a2cf6134464a8ce"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
