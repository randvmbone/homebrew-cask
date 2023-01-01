cask "randvmb-audio-hijack" do
  on_mojave :or_newer do
    version "3.8.12"
    sha256 "1115a8f6250ddee446806a58a3fa5fa812649567cf46f393c4077c421f8bc197"
    url "https://rogueamoeba.com/legacy/downloads/AudioHijack-3812.zip"
  end
  on_high_sierra do
    version "3.8.5"
    sha256 "7b7b59ac3156e58f0e5aed1aca00fcfca72d5a62f4b3258c8cd8cfc114bdc27e"
    url "https://rogueamoeba.com/legacy/downloads/AudioHijack-385.zip"
  end
  
  name "Audio Hijack"
  desc "Record Any Audio on MacOS"
  homepage "https://rogueamoeba.com/audiohijack/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.audiohijack&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

  app "Audio Hijack.app"
  zap trash: [
    "~/Library/Application Support/Audio Hijack/",
    "~/Library/Caches/com.rogueamoeba.audiohijack3/",
    "~/Library/Preferences/com.rogueamoeba.audiohijack3.plist",
    "~/Library/WebKit/com.rogueamoeba.audiohijack3/"
  ]
end