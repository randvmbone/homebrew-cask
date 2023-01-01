cask "randvmb-focusrite-control" do
	on_mojave :or_newer do
		version "3.11.0.1983"
		sha256 "6563ce66aaec2cb24a31bc8bc91f0d819ecaafc515559f6a692c3c0d766c210c"
	end
	on_high_sierra :or_older do
		version "3.7.4.1943"
		sha256 "969d9e78f42f9f810e40be4e2b07450e5cf6cd4267d72c5ae525899742c8baab"
	end

	url "https://fael-downloads-prod.focusrite.com/customer/prod/downloads/Focusrite%20Control%20-%20#{version}.dmg"
	name "Focusrite Control"
	desc "Configure your routing and monitor mixes with user-friendly control software"
	homepage "https://focusrite.com/en/focusrite-control/"

	pkg "Focusrite Control.pkg"

	zap trash: [
		"/Library/Logs/Focusrite Control/",
		"~/Library/Logs/Focusrite Control/",
		"/var/db/receipts/com.focusrite.FocusriteControl.bom",
		"/var/db/receipts/com.focusrite.FocusriteControl.plist"
	]
end