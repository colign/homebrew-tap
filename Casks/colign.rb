cask "colign" do
  version "0.1.0"

  on_arm do
    sha256 "79f5a2cc0aafafa3fa7879b98d2b39016ecdeb1310bf69e97625e173bef73447"
    url "https://github.com/colign/colign/releases/download/desktop-v#{version}/Colign-#{version}-arm64-mac.zip"
  end

  on_intel do
    sha256 "2793b09f79886ebc291055d7b0cfa73f470a3242d5e147f0fe7799be5446f2ad"
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
