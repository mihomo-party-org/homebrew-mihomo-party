cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"

  on_catalina do
    sha256 arm:   "c39b49aedc7e02e86c787f605743fad923870f93d145abdadae323c79b9baf4f",
           intel: "82c6f289045b13cab09c1c982cf7cb11aee245e3b66d092b757eb16970a1a3d7"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-catalina-#{version}-#{arch}.pkg"

    pkg "mihomo-party-catalina-#{version}-#{arch}.pkg"
  end
  on_big_sur :or_newer do
    sha256 arm:   "e68bd3a6659c9473b13f15fe006b8738068954f14407e3b186641f2631dfc76d",
           intel: "8786453548e561d720f98738f2a42879d6e706f30fffdf6bcb51e2073cac7352"

    url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"

    pkg "mihomo-party-macos-#{version}-#{arch}.pkg"
  end

  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  uninstall pkgutil: "party.mihomo.app"

  zap trash: "~/Library/Application Support/mihomo-party"
end
