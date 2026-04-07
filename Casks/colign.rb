cask "colign" do
  version "0.1.0"

  on_arm do
    sha256 "PLACEHOLDER"
    url "https://github.com/colign/colign/releases/download/desktop-v#{version}/Colign-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "PLACEHOLDER"
    url "https://github.com/colign/colign/releases/download/desktop-v#{version}/Colign-#{version}-mac.zip"
  end

  name "Colign"
  desc "AI-powered spec management platform for team alignment"
  homepage "https://colign.co"

  app "Colign.app"

  zap trash: [
    "~/Library/Application Support/colign-desktop",
    "~/Library/Preferences/co.colign.desktop.plist",
  ]
end
