cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9"
  sha256 arm:   "84f1e5609a77cce095a7b7b93ba6e29c1fcf969249de705d15529dc2bd710691",
         intel: "2eda873fcfeecbf1a417a021b68f3b1b5ad51d31ddc62dcad9c74a013c18a3b8"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.pkg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
