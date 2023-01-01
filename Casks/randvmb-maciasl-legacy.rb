cask "randvmb-maciasl-legacy" do
  version "1.5.8"
  sha256 "cd2a4bb2311316f66a08b937b7ef3c9928d8c19f8a53d87759e123535bed876e"

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.dmg"
  name "MaciASL"
  desc "ACPI editing IDE for macOS"
  homepage "https://github.com/acidanthera/MaciASL/"

  app "MaciASL.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.acidanthera.maciasl.sfl2",
    "~/Library/Preferences/org.acidanthera.MaciASL.plist"
  ]
end