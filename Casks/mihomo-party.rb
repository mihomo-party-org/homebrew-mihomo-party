cask "mihomo-party" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7"
  sha256 arm:   "bc70d47bf0e09d832630be1c6b9e3efe37835d3ffd264a0cdef9d94285a488f5",
         intel: "7f99ef905c8d7f9d3f700902a9a3dcb8e232a159da010cd6910e69ced5fcd6b4"

  url "https://github.com/mihomo-party-org/mihomo-party/releases/download/v#{version}/mihomo-party-macos-#{version}-#{arch}.dmg"
  name "Mihomo Party"
  desc "Another Mihomo GUI"
  homepage "https://github.com/mihomo-party-org/mihomo-party"

  app "Mihomo Party.app"
  binary "#{appdir}/Mihomo Party.app/Contents/MacOS/Mihomo Party"
end
