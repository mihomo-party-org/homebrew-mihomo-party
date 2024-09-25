cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.4"
  sha256 arm:   "45218f9cf2ca0c3a5c3b4fa7993c55af96cd0ae7a6edecbc30f92aada1a8ee55",
         intel: "5d0cefff80cd021bbcbdf196540775700c6bd3c1e724ff8dd61bb7b2991504b3"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
