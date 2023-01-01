cask "randvmb-github" do
  version "3.1.2-7cd66717"
  sha256 "a73cc106c898d7af82de7a2911f63f9659dca3c3c2b26eb67ab8259a095e0ad7"

  url "https://desktop.githubusercontent.com/github-desktop/releases/#{version}/GitHubDesktop-x64.zip"
  name "GitHub Desktop"
  desc "Simple collaboration from your desktop"
  homepage "https://desktop.github.com/"

  livecheck do
    url "https://central.github.com/deployments/desktop/desktop/latest/darwin"
    strategy :header_match
    regex(%r{(\d+(?:\.\d+)[^/]*)/GitHubDesktop[._-]x64\.zip}i)
  end

  auto_updates true

  app "GitHub Desktop.app"

  zap trash: [
        "~/Library/Application Support/GitHub Desktop/",
        "~/Library/Caches/com.github.GitHubClient/",
        "~/Library/Caches/com.github.GitHubClient.ShipIt/",
        "~/Library/Logs/GitHub Desktop/",
        "~/Library/Preferences/com.github.GitHubClient.plist",
        "~/Library/Saved Application State/com.github.GitHubClient.savedState/"
      ]
end