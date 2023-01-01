cask "randvmb-loopback" do
  on_catalina :or_newer do
    version "2.2.12"
    sha256 "c9d97abd3348aee7badb31bd50e8c60f567da5f8793c132d8c21df2ba64fdcd7"
    url "https://rogueamoeba.com/loopback/download/Loopback.zip"
  end
  on_mojave do
    version "2.2.9"
    sha256 "c8ed0f0bf1e2f535b8b6c6c6fe347cc6e2c97ec2bd61bbaba3720e009f621447"
    url "https://rogueamoeba.com/legacy/downloads/Loopback-229.zip"
  end
  on_high_sierra do
    version "2.2.4"
    sha256 "21bfa245f37c47985267beec2f1dab531b600da49c8b16fa2218377dc67b84c6"
    url "https://rogueamoeba.com/legacy/downloads/Loopback-224.zip"
  end
  
  name "Loopback"
  desc "Cable-Free Audio Routing"
  homepage "https://rogueamoeba.com/loopback/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.loopback&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

  app "Loopback.app"
  zap trash: [
    "~/Library/Application Support/Loopback/",
    "~/Library/Caches/com.rogueamoeba.Loopback/",
    "~/Library/LaunchAgents/com.rogueamoeba.loopbackd.plist",
    "~/Library/Preferences/com.rogueamoeba.Loopback.plist",
    "~/Library/Preferences/com.rogueamoeba.loopbackd.plist",
    "~/Library/WebKit/com.rogueamoeba.Loopback/"
  ]
end