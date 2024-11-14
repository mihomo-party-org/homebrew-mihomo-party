cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.8"
    sha256 arm:   "0ac1bf04477dc6f01d9ec590b9cf975b53a5ce94019a2c7af58cacc33e197e01",
           intel: "ae541b3911cde8171c11e06b7c93943fdabc6736912f48a73501d66704b879b2"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.8"
    sha256 arm:   "7aae6d06fa32dad7877776f6a9174e7c5961dc5d464a4a32dbd475fea8bd71b8",
           intel: "18b3065f79cbedcea7bf7eec4450d95638ba29f1498c03ee3a5477cb5cc59e08"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
