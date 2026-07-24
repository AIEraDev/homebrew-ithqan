cask "ithqan" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "1713cee39d3c108ec4441f2d363138fba8642ae1d077dee911ab027a7dabb9e4",
         intel: "5739b5e22006c515bddc3d368f042c49abf644d78258b3aaf2b6a49d2276030d"

  url "https://github.com/AIEraDev/Ithqan/releases/download/v#{version}/Ithqan_v#{version}_macos_#{arch}.dmg",
      verified: "github.com/AIEraDev/Ithqan/"

  name "Ithqan"
  desc "Local-first Quran memorization review companion with audio looping and retention tracking"
  homepage "https://github.com/AIEraDev/Ithqan"

  app "Ithqan.app"

  zap trash: [
    "~/Library/Application Support/com.ithqan.app",
    "~/Library/Caches/com.ithqan.app",
    "~/Library/Preferences/com.ithqan.app.plist",
  ]
end
