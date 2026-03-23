cask "romanian-programmers" do
  version "1.0"
  sha256 "8b8e75e104b06dc3430426a79f6f93bf93c8504e6dcfb9e032dff6a1723c36bc"

  url "https://github.com/calini/romanian-programmers-macos/releases/download/v#{version}/Romanian.-.Programmers.bundle.zip"
  name "Romanian - Programmers"
  desc "Romanian Programmers keyboard layout for macOS"
  homepage "https://github.com/calini/romanian-programmers-macos"

  artifact "Romanian - Programmers.bundle", target: "/Library/Keyboard Layouts/Romanian - Programmers.bundle"
end
