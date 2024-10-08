cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.4"
  sha256 arm:   "21d7f62d2b21559debd8112575e3d95f7f793109aabe8bebcfa63e5ef63fae9a",
         intel: "2816f862bf5a1660d0ca070b293eda65ba3336980fb121afa47a115ee4d21150"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
