cask "brewcap" do
  version "1.5.9"
  sha256 "afc143b9b9f8fe5df1da84b9e707b7d0b190c43baa5e95e6256dafa8ddcecb58"

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
