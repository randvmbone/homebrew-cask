cask "randvmb-fork" do
  version "2.24"
  sha256 "8139df60bcf157ec435c1cae0f3133b1c8094b1f212ee33d93dcd70ed3eb06a2"

  url "https://cdn.fork.dev/mac/Fork-#{version}.dmg"
  name "Fork"
  desc "A fast and friendly git client for Mac and Windows"
  homepage "https://fork.dev/"

  livecheck do
    url "https://git-fork.com/update/feed.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Fork.app"

  zap trash: [
    "~/Library/Application Support/Fork",
    "~/Library/Application Support/com.DanPristupov.Fork/",
    "~/Library/Caches/com.DanPristupov.Fork",
    "~/Library/Logs/Fork.log",
    "~/Library/Preferences/com.DanPristupov.Fork.plist",
    "~/Library/Saved Application State/com.DanPristupov.Fork.savedState",
    "~/Library/WebKit/com.DanPristupov.Fork"
  ]
end