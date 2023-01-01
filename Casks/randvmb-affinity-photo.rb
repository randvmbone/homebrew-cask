cask "randvmb-affinity-photo" do
	version "1.10.6"
	sha256 "f72fb9bc834f29cc92a8597996df683e3af0337a07211a4b7f48580e53855a56"

	url "https://store.serif.com/download/075b51/"
	name "Affinity Photo"
	desc "Award-winning photo editing software"
	homepage "https://affinity.serif.com/en-us/photo/"

	livecheck do
		url :url
		strategy :header_match
	end
	
	auto_updates true

	app "Affinity Photo.app"

	zap trash: [
		"~/Library/Application Support/Affinity Photo/",
		"~/Library/Caches/com.apple.helpd/Generated/com.seriflabs.affinityphoto.help*/",
		"~/Library/Caches/com.seriflabs.affinityphoto/",
		"~/Library/Preferences/com.seriflabs.affinityphoto.plist",
		"~/Library/Saved Application State/com.seriflabs.affinityphoto.savedState/"
	]
end