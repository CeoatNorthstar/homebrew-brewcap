cask "brewcap" do
  version "1.5.8"
  sha256 "6db1fb9f4f242291f773be1907717b216e9eda8112bfd7eaacced917292cb97c"

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
