cask "randvmb-intel-power-gadget" do
  version "3.7.0"
  sha256 "22ed3fe050c3b965841ccc5590a3a03bb9498f8620e01ba4dea5557dcd24fe43"

  url "https://www.intel.com/content/dam/develop/external/us/en/documents/Intel-Power-Gadget-v#{version}.dmg"
  name "Intel Power Gadget"
  desc "Software-based power estimation tool enabled for 2nd Generation Intel Core processors or newer"
  homepage "https://www.intel.com/content/www/us/en/developer/articles/tool/power-gadget.html"

  pkg "Install Intel Power Gadget.pkg"

  zap trash: [
    "/Applications/Intel Power Gadget/",
    "~/Library/Caches/com.intel.PowerGadget/"
  ]
end