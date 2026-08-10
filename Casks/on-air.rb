cask "on-air" do
  version "0.2.1"
  sha256 "49e47d93cbc22f85ee0a12041b48b52e0cf0644fd3f487d8dec3601de3a92e63"

  url "https://github.com/calini/on-air/releases/download/v#{version}/OnAir.zip"
  name "On Air"
  desc "Menu bar app that toggles a Home Assistant switch while your mic is live"
  homepage "https://github.com/calini/on-air"

  depends_on macos: ">= :sonoma"

  app "OnAir.app"

  zap trash: [
    "~/Library/Preferences/io.ilie.onair.plist",
  ]

  caveats <<~CAVEATS
    On Air is ad-hoc signed, not notarized. On first launch, right-click
    (Control-click) OnAir.app in Applications and choose Open, then confirm
    in the dialog -- otherwise Gatekeeper will refuse to launch it.
  CAVEATS
end
