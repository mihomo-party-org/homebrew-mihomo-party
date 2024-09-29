cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.6"
  sha256 arm:   "b6f5efde6769da50f7a24c22b806c8403836e91c35c7bf12f3088519aa674e59",
         intel: "e2a637ab694445999becdb20f15e89475921f1aeeb8eb36fc97cf558fd2a29d5"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
