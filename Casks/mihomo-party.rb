cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  on_catalina do
    version "1.5.3"
    sha256 arm:   "da50050205d3a7fde50da7afb7658d6a0806523e3c035338b930d8907568f901",
           intel: "546b67a023c7cd1f858e6fc2d730985ed2083774767696b99d0be9068e03174c"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    version "1.5.3"
    sha256 arm:   "5565b74b41e46f32601b0c769554e70641e33da25b4ba727b58a87007386348b",
           intel: "b0dc683c2cce11b38613d766390da4e6c7a7d3e05e43d7d5e013817fb568bc47"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
