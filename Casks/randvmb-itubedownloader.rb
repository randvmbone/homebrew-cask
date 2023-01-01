cask "randvmb-itubedownloader" do
  version "6.6.0"
  sha256 "c3d3d067b1db421e360f2ca4f89f98bcf62076de447d258a7f29e77736c09f59"

  url "https://itubedownloader.s3.us-east-2.amazonaws.com/iTubeDownloader.dmg"
  name "iTubeDownloader"
  desc "YouTube Downloader for Mac"
  homepage "https://alphasoftware.co/"

  app "iTubeDownloader.app"

  zap trash: [
    "/Users/Shared/iTubeDownloader/",
    "~/Library/Application Support/iTubeDownloader/",
    "~/Library/Caches/com.AlphaSoft.iTubeDownloader/",
    "~/Library/Preferences/com.AlphaSoft.iTubeDownloader.plist",
    "~/Library/WebKit/com.AlphaSoft.iTubeDownloader/"
  ]
end