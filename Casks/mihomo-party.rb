cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "c665d1934831878b1148101884e6574a8fbaf464bf887702f7709366455838aa",
         intel: "de7ddce5b75dfd929a4062d682119910c392566b04cc887cfb4f2cdf804e2863"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
