cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.23"
  sha256 arm:   "c77916f5f53ae5bcb7f19441461b0e63d8b44a4029ed6da856b3213abdeff494",
         intel: "0d97e4145f1b319fd5a82c1dab3d779a3d10b0d065eb50442ca24e8e6b97b7dc"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
