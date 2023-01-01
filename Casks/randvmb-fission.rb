cask "randvmb-fission" do
  on_catalina :or_newer do
    version "2.8.3"
    sha256 "776727a064701ccb345dd75a331f9943cd41ae46bee9e007cfe3b2110ac7f167"
    url "https://rogueamoeba.com/fission/download/Fission.zip"
  end
  on_mojave do
    version "2.8.1"
    sha256 "5c1f780a7e9e94e60c6d7dc337b8c3bbe7ae6c276acb7185bfcb69208bc76f17"
    url "https://rogueamoeba.com/legacy/downloads/Fission-281.zip"
  end
  on_high_sierra do
    version "2.7.1"
    sha256 "678145b30da26fd677d6b65a4734714a26a9d6715c3c7690a46ef2961475070f"
    url "https://rogueamoeba.com/legacy/downloads/Farrago-271.zip"
  end
  
  name "Fission"
  desc "Fast & Lossless Audio Editing"
  homepage "https://rogueamoeba.com/fission/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.fission&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

  app "Fission.app"
  zap trash: [
    "~/Library/Caches/com.rogueamoeba.Fission/",
    "~/Library/Preferences/com.rogueamoeba.Fission.plist",
    "~/Library/WebKit/com.rogueamoeba.Fission/"
  ]
end