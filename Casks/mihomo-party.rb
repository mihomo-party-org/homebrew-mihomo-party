cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.9"
    sha256 arm:   "0ac1bf04477dc6f01d9ec590b9cf975b53a5ce94019a2c7af58cacc33e197e01",
           intel: "ae541b3911cde8171c11e06b7c93943fdabc6736912f48a73501d66704b879b2"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.9"
    sha256 arm:   "e86314c61a2e6fbf1a6a06c4d5e7b1b9a55a7efdfd69b88e5893351a5f9568f5",
           intel: "ed393139f3c736f6d8395542384507f10a0ea2e5f186346f7318dea65e21c1c7"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
