cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.5.2"

  on_catalina do
    sha256 arm:   "35751acabb9806626549e87133002e6be67993731e6e5126697573bad952f8b8",
           intel: "53cb1e79d2a00eb767b798c6506bf767e8b5398abbd932c5b229aec2f821666d"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
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
