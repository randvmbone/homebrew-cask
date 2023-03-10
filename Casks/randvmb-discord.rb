cask "randvmb-discord" do
  version "0.0.270"
  sha256 "1dbf06660b06dd6088713527caa60af347b95a5218ffb2c2b6c1baf514af521b"

  url "https://dl.discordapp.net/apps/osx/#{version}/Discord.dmg"
  name "Discord"
  desc "Your Place to Talk and Hang Out"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/stable?platform=osx"
    strategy :header_match
  end

  auto_updates true

  app "Discord.app"

  zap trash: [
    "~/Library/Application Support/discord",
    "~/Library/Caches/com.hnc.Discord",
    "~/Library/Caches/com.hnc.Discord.ShipIt",
    "~/Library/Preferences/com.hnc.Discord.plist",
    "~/Library/Saved Application State/com.hnc.Discord.savedState"
  ]
end