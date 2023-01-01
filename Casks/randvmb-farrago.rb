cask "randvmb-farrago" do
  on_catalina :or_newer do
    version "1.6.8"
    sha256 "a6c065ccdf9246d69110268b361870d74d3db560f316518a6ea5652e7bfd721f"
    url "https://rogueamoeba.com/farrago/download/Farrago.zip"
  end
  on_mojave do
    version "1.6.7"
    sha256 "2b12b9522a0b5a23a2482be158cff548cf7e2b9faedf5cf55d31ce638a069dcb"
    url "https://rogueamoeba.com/legacy/downloads/Farrago-167.zip"
  end
  on_high_sierra do
    version "1.6.4"
    sha256 "fe906ed92db07ed7d6c89971c7c34bc0d3509e99d8e7c686d931591386e344ff"
    url "https://rogueamoeba.com/legacy/downloads/Farrago-164.zip"
  end
  
  name "Farrago"
  desc "Robust, rapid-fire soundboards"
  homepage "https://rogueamoeba.com/farrago/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=1231&bundleid=com.rogueamoeba.farrago&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  auto_updates true

  app "Farrago.app"
  zap trash: [
    "~/Library/Application Support/Farrago/",
    "~/Library/Caches/com.rogueamoeba.farrago/",
    "~/Library/Preferences/com.rogueamoeba.farrago.plist",
    "~/Library/WebKit/com.rogueamoeba.farrago/"
  ]
end