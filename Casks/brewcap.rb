cask "brewcap" do
  version "1.5.2"
  sha256 "2c3e226e537be1ed25a97a8bd332dcc20427b43ebbfabbe4d1576c209004ade5"

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
