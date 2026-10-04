cask "brew-hub" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "a05ee5516ca25495a7ed7530940022f8a8ee6e30298f7ffefd885bfcdfb6c504",
         intel: "900fbe04d0931659b33bb48ffd37c6845ead61c06c3b1aec63fed0831809344b"

  url "https://github.com/cuongdc03/brew-hub/releases/download/v#{version}/brew-hub_#{version}_#{arch}.dmg"
  name "Brew Hub"
  desc "Modern desktop GUI application for managing Homebrew packages and daemons"
  homepage "https://github.com/cuongdc03/brew-hub"

  auto_updates true
  depends_on :macos

  app "brew-hub.app"

  zap trash: [
    "~/Library/Application Support/com.cuong.brew-hub",
    "~/Library/Caches/com.cuong.brew-hub",
    "~/Library/Saved Application State/com.cuong.brew-hub.savedState",
  ]
end
