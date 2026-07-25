cask "ithqan" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "7f44dc90ef14c213ca6d0197c92930257f89196fdcb7407573c392d2fc0f4c70",
         intel: "d51ce8a9a94cff6fe3430912727cb36663f62f12fe6a80a4756a041ed32afc46"

  url "https://github.com/AIEraDev/Ithqan/releases/download/v#{version}/Ithqan_v#{version}_macos_#{arch}.dmg",
      verified: "github.com/AIEraDev/Ithqan/"

  name "Ithqan"
  desc "Local-first Quran memorization review companion with audio looping and retention tracking"
  homepage "https://github.com/AIEraDev/Ithqan"

  app "Ithqan.app"

  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Ithqan.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.ithqan.app",
    "~/Library/Caches/com.ithqan.app",
    "~/Library/Preferences/com.ithqan.app.plist",
  ]
end
