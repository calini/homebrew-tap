cask "thinkpad-trackpoint-ii-keymapping" do
  version "1.0.0"
  sha256 "b5cdec91782bfb8a920e533ac52ea344b0667c274ec3f06e5f1f73009bc279e7"

  url "https://github.com/calini/thinkpad-trackpoint-ii-macos/archive/refs/tags/v#{version}.zip"
  name "ThinkPad TrackPoint II Keymapping"
  desc "macOS key remapping LaunchDaemon for the ThinkPad TrackPoint II keyboard"
  homepage "https://github.com/calini/thinkpad-trackpoint-ii-macos"

  artifact "thinkpad-trackpoint-ii-macos-#{version}/com.lenovo.ThinkPadTrackPointII.keymapping.plist",
           target: "/Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist"

  caveats <<~EOS
    After installation, load the LaunchDaemon to activate key remapping:
      sudo launchctl load /Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist

    To unload it:
      sudo launchctl unload /Library/LaunchDaemons/com.lenovo.ThinkPadTrackPointII.keymapping.plist

    INPUT MONITORING PERMISSION REQUIRED:
    On macOS Sequoia and later, hidutil (used by this LaunchDaemon) requires
    "Input Monitoring" access to remap keys. Without it, remapping will silently fail.

    To grant access:
      1. Open System Settings > Privacy & Security > Input Monitoring
      2. Click "+" and add /usr/bin/hidutil
      3. Enable the toggle next to it
  EOS
end