cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.24"
  sha256 arm:   "904b15e8a69b1d0606b5a5f4be104cfdd290ccccc09b6e441b7713e644e079eb",
         intel: "a16882910c1290b8d8fad78c84f7e61b17f87c4e43c4e3012700153fff910259"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
