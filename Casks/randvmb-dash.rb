cask "randvmb-dash" do
  on_mojave :or_newer do
    version "6.4.0"
    sha256 "165b17939f1501bfe6fe6e363a7246fbc276b51d1769f80e41828551d1cbd8ed"
  end
  on_high_sierra :or_older do
    version "4.6.7"
    sha256 "e2b5eb996645b25f12ccae15e24b1b0d8007bc5fed925e14ce7be45a2b693fb6"
  end

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  name "Dash"
  desc "Documentation Browser for 200+ APIs"
  homepage "https://kapeli.com/dash/"

  livecheck do
    url "https://kapeli.com/Dash#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Dash.app"

  zap trash: [
    "~/Library/Application Support/Dash",
    "~/Library/Application Support/com.kapeli.dashdoc",
    "~/Library/Caches/com.kapeli.dashdoc",
    "~/Library/Logs/Dash",
    "~/Library/Preferences/com.kapeli.dashdoc.plist",
    "~/Library/WebKit/com.kapeli.dashdoc"
  ]
end