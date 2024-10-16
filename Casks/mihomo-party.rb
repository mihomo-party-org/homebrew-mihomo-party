cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "e68bd3a6659c9473b13f15fe006b8738068954f14407e3b186641f2631dfc76d",
         intel: "8786453548e561d720f98738f2a42879d6e706f30fffdf6bcb51e2073cac7352"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  pkg "mihomo-party-macos-#{version}-#{arch}.pkg"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
