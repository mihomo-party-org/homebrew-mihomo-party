cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.2"
    sha256 arm:   "da50050205d3a7fde50da7afb7658d6a0806523e3c035338b930d8907568f901",
           intel: "546b67a023c7cd1f858e6fc2d730985ed2083774767696b99d0be9068e03174c"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.2"
    sha256 arm:   "c82611cbe2d2108c353606de03afd8f9f123e0bee3c762f34ad1c10c15594a9e",
           intel: "3a0095945f9d0e4838ea2aaf70a129c5e163637d039442b1171f75fc585cac8c"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
