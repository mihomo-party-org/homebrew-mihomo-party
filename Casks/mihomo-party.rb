cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "85252022805013af880e5e9882870e99944650ec24a87492841a90be92fe66bf",
         intel: "4e6f2bbf4afea08745642e39b7df144815d0c3afeaeec425497a6328b1ab8e78"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
