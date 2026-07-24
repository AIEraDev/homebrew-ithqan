cask "ithqan" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "bfd8b6c7d4d4bf39e5dd6a9099a65489977224f29d49370d27ceb456ee42f924",
         intel: "51a56c4489550a53926d6d415dc9def9eb3b983324b6c29d48aabf5dcda8ed37"

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
