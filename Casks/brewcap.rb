cask "brewcap" do
  version "1.5"
  sha256 "ca4164c1eac2157d9358561a71ff9401e55d9ad2650418508dff4eb4c02c9812"

  url "https://github.com/CeoatNorthstar/BrewCap/releases/download/v#{version}/BrewCap-#{version}.dmg"
  name "BrewCap"
  desc "Battery health and charge management for macOS"
  homepage "https://github.com/CeoatNorthstar/BrewCap"

  preflight do
    system_command "xattr", args: ["-cr", "#{staged_path}/BrewCap.app"]
  end

  app "BrewCap.app"

  zap trash: [
    "~/Library/Preferences/com.brewcap.app.plist",
  ]
end
