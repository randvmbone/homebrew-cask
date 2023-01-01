cask "randvmb-macid" do
	version "1.3.7"
	sha256 "788a081b6346c861472af9ad8e5e2f7ef172247e235aa93d5f2a89fe97d5cb82"

	url "https://macid.co/app/#{version}/MacID%20for%20macOS.zip"
	name "MacID"
	desc "Unlock your Mac with just your fingerprint"
	homepage "https://macid.co/"

	app "MacID.app"

	zap trash: [
		"~/Library/Application Support/MacID/",
		"~/Library/Preferences/com.kanecheshire.macID-macOS.plist",
	]
end