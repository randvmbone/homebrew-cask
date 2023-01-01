cask "randvmb-alfred3" do
	on_big_sur :or_older do
		version "3.8.6"
		sha256 "20b111cbd22fb57f8a1d11348e12b55f9725c8eca6517790b1df8e2cd9c9a9b8"
	end

	url "https://cachefly.alfredapp.com/Alfred_3.8.6_972.dmg"
	name "Alfred 3"
	desc "Productivity App for macOS"
	homepage "https://www.alfredapp.com/help/v3/"

	app "Alfred 3.app"

	zap trash: [
		"~/Library/Application Support/Alfred 3/",
		"~/Library/Caches/com.runningwithcrayons.Alfred-3/",
		"~/Library/Preferences/com.runningwithcrayons.Alfred-3.plist",
		"~/Library/Preferences/com.runningwithcrayons.Alfred-Preferences-3.plist"
	]
end