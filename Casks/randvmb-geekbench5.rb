cask "randvmb-geekbench" do
  version "5.4.6"
  sha256 "7a60fc5bc301251d2dfaf815905ba6d2fe668fd772c3edfe7c1a57b7c1f27113"

  url "https://cdn.geekbench.com/Geekbench-#{version}-Mac.zip"
  name "Geekbench 5"
  desc "Cross-Platform Benchmark"
  homepage "https://www.geekbench.com/"

  livecheck do
    url "https://www.primatelabs.com/appcast/geekbench#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Geekbench #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.primatelabs.Geekbench#{version.major}",
    "~/Library/Preferences/com.primatelabs.Geekbench#{version.major}.plist",
    "~/Library/Saved Application State/com.primeatelabs.Geekbench#{version.major}.savedState",
  ]
end