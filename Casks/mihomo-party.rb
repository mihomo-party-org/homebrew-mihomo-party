cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.5"
  sha256 arm:   "9d260bae3605661a51f3560d8a5a76716f8703a3aa11dde77fb811077fa27384",
         intel: "67b834d557eec1e64971b1cee8ae42263376f86faf8af5616b1eb5b9407d0f80"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
