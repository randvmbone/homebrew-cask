cask "randvmb-textual" do
  version "7.2.1"
  sha256 "e4306a5da09c1d9672dca47c38a32e50872d673be5637a042b3e3d3e0c730ede"

  url "https://www.codeux.com/textual/downloads/Textual#{version.major}.dmg"
  name "Textual"
  desc "IRC for macOS"
  homepage "https://www.codeux.com/textual/"

  app "Textual.app"

  zap trash: [
    "~/Library/Application Support/Textual",
    "~/Library/Application Support/com.codeux.apps.textual/",
    "~/Library/Caches/com.codeux.apps.textual/",
    "~/Library/Group Containers/com.codeux.apps.textual/",
    "~/Library/Preferences/com.codeux.apps.textual.plist"
  ]
end