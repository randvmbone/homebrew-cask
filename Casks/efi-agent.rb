cask "randvmb-efi-agent" do
  version "1.3.4"
  sha256 "8a8f042d3d09ae013400e45ced27d78842b8d0a044a34cf66f9415454e75141c"

  url "https://github.com/benbaker76/EFI-Agent/releases/download/#{version}/EFI.Agent.zip"
  name "EFI Agent"
  desc "Simple, low resource, efficient and no frills tool to mount EFI partitions"
  homepage "https://github.com/benbaker76/EFI-Agent/"

  auto_updates true

  app "MaciASL.app"

  zap trash: [
    "~/Library/Preferences/com.Headsoft.EFIAgent.plist"
  ]
end