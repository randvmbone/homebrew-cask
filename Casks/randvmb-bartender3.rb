cask "randvmb-bartender3" do
	on_catalina :or_older do
		version "3.1.25"
		sha256 "bd31aa2aab3262ed08f5c421d504b82893b5dfc546f37fc98eae23bc47494c8a"
	end

	url "https://www.macbartender.com/Demo/Bartender%203.zip"
	name "Bartender 3"
	desc "Organize your menu bar icons on Mac"
	homepage "https://www.macbartender.com/Bartender3.html"

	app "Bartender 3.app"

	zap trash: [
		"~/Library/Application Scripts/com.surteesstudios.BartenderStartAtLoginHelper/",
		"~/Library/Caches/com.surteesstudios.Bartender/",
		"~/Library/Containers/com.surteesstudios.BartenderStartAtLoginHelper/",
		"~/Library/Preferences/com.surteesstudios.Bartender.plist"
	]
end