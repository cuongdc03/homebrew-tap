cask "brew-hub" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "42b70dc9f6f28a6a841aa896691067975b862f618518867241e4222188bfa7c8",
         intel: :no_check

  url "https://github.com/cuongdc03/brew-hub/releases/download/v#{version}/brew-hub_#{version}_#{arch}.dmg"
  name "Brew Hub"
  desc "Modern desktop GUI application for managing Homebrew packages and daemons"
  homepage "https://github.com/cuongdc03/brew-hub"

  auto_updates true
  depends_on :macos

  app "brew-hub.app"

  postflight_steps do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/brew-hub.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.cuong.brew-hub",
    "~/Library/Caches/com.cuong.brew-hub",
    "~/Library/Saved Application State/com.cuong.brew-hub.savedState",
  ]
end
