cask "randvmb-steam" do
  sha256 :no_check

  url "https://cdn.cloudflare.steamstatic.com/client/installer/steam.dmg",
      verified: "cdn.cloudflare.steamstatic.com/"
  name "Steam"
  desc "The ultimate destination for playing, discussing, and creating games"
  homepage "https://store.steampowered.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end
  
  auto_updates true

  app "Steam.app"

  uninstall quit:      [
              "com.valvesoftware.steam",
              "com.valvesoftware.steam.helper",
              "com.valvesoftware.steam.helper.EH",
            ],
            launchctl: [
              "com.valvesoftware.steamclean",
              "com.valvesoftware.steam.ipctool",
            ]

  zap trash: [
    "~/Library/Application Support/Steam/",
    "~/Library/LaunchAgents/com.valvesoftware.steamclean.plist",
    "~/Library/Preferences/com.valvesoftware.steam.helper.plist",
    "~/Library/Saved Application State/com.valvesoftware.steam.savedState/"
  ]
end