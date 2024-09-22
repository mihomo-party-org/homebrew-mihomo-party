cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "6b2d9ffb96e8a6fedf4312a9fcc773e08ca656053bc53ca80090d6fb0502aef2",
         intel: "3ee7f99667bb710285a0a2c72aba302774d54af092bc57b95abda217de261e3d"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
