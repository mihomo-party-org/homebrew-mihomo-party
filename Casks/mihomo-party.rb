cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.2.22"
  sha256 arm:   "86057f611da9377c4af571dd18ccf9b734188b281922aab886864f65507c331a",
         intel: "7137b2ff76af6c833cf688752d94d39eab46d105fd8530915a816b3daf2c1c33"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "mihomo-party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "mihomo-party.app"
  binary "#{appdir}/mihomo-party.app/Contents/MacOS/mihomo-party"
end
