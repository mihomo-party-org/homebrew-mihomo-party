cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "e8f26cdb1ae063e17f88a08c0bd554b6c5b00d1226a92edc6d095bee2ab06f23",
         intel: "fcda7a3376d8ac6224cff5d824c2040174e754284c07ec43903be2cca35d803b"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
