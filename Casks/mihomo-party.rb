cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.10"
    sha256 arm:   "0ac1bf04477dc6f01d9ec590b9cf975b53a5ce94019a2c7af58cacc33e197e01",
           intel: "ae541b3911cde8171c11e06b7c93943fdabc6736912f48a73501d66704b879b2"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.10"
    sha256 arm:   "f755b08425bb3ce6f73711869320f17b760cc8ea540edebfb5edfef49cef9038",
           intel: "38dc0a850877b7015a4f1bf078ecc6b39a1c1d2ac84b10228f39c8f4f144b3ba"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
