cask "randvmb-coderunner" do
  version "4.2.1"
  sha256 "e8339db2a0552d4d685424134a29fce878f3a1c52d13edcf4af3e824146510c5"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  name "CodeRunner"
  desc "Programming Editor for macOS"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Support/CodeRunner",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.krill.coderunner.sfl2",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Preferences/com.krill.CodeRunner.plist",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState"
  ]
end