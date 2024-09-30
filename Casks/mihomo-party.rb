cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "d99276208ab9aeb1660a4a448d0735bf5c141002867b5b290f5169b941fbc0f0",
         intel: "59f803a2387885c6af9213ba821c6feb371bec31c3ec1897717d11b8565504c9"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
