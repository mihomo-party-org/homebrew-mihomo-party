cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.5.1"

  on_catalina do
    sha256 arm:   "35751acabb9806626549e87133002e6be67993731e6e5126697573bad952f8b8",
           intel: "53cb1e79d2a00eb767b798c6506bf767e8b5398abbd932c5b229aec2f821666d"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "7b0e84e1d64e10e040e4035ecb2d3af0081bb39acf2d0c9075745bf6e532d365",
           intel: "9f1465eb62c8a1f0da9ccd6f03eacb8685e6678e46cd25cf77a4b4e339388c25"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
