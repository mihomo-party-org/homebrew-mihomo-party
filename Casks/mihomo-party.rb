cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.3.5"
  sha256 arm:   "11feed2d915b53429889909f31da656e4cd364e4d515720bb74b68f508ea9ef7",
         intel: "76d2be61f9931e5867741f786575fa0a02d95c5e63ce28fd798794613ec189a6"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
