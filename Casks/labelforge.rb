cask "labelforge" do
  version "1.2.2"
  sha256 "8b7fdc75f1d7e90bab07a336b0bbb528c912dcd4f3713be6934bbfdd3a74556d"

  url "https://github.com/xtamtamx/labelforge-site/releases/download/v#{version}/LabelForge.dmg"
  name "LabelForge"
  desc "Reformat carrier shipping labels for any label printer"
  homepage "https://labelforge.co/"

  depends_on macos: ">= :ventura"

  app "LabelForge.app"

  zap trash: [
    "~/Library/Preferences/com.labelforge.LabelForge.plist",
  ]
end
