cask "labelforge" do
  version "1.3.0"
  sha256 "98fd5ed752c2a2514deffd1d03aeb53162b7458c82a4558f962f8eaecb0b4884"

  url "https://github.com/xtamtamx/labelforge-site/releases/download/v#{version}/LabelForge.dmg"
  name "LabelForge"
  desc "Reformat carrier shipping labels for any label printer"
  homepage "https://labelforge.co/"

  depends_on macos: :ventura

  app "LabelForge.app"

  zap trash: [
    "~/Library/Preferences/com.labelforge.LabelForge.plist",
  ]
end
