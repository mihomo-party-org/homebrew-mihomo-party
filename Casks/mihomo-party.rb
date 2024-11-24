cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.12"
    sha256 arm:   "0ac1bf04477dc6f01d9ec590b9cf975b53a5ce94019a2c7af58cacc33e197e01",
           intel: "ae541b3911cde8171c11e06b7c93943fdabc6736912f48a73501d66704b879b2"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.12"
    sha256 arm:   "4d047be0105e686914d35c77520d89b7b8d86bb9c2c30a66928c4c57632b5ff3",
           intel: "eb1528be2b251ab7d3457b5758cfe5b4332c4eaff536ed988c7332f4c44e810b"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
