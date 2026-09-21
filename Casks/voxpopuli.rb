cask "voxpopuli" do
  version "0.10.0"
  sha256 "fc4c9bc923164a0f79a2c61cdf2b84b18eb190a3513ea000ae0d161a27c0cf6d"

  url "https://dl.tfada.fr/voxpopuli/homebrew/VoxPopuli-#{version}.dmg"
  name "VoxPopuli"
  desc "Native macOS real-time voice transcription using Apple Neural Engine"
  homepage "https://tfada.fr"

  depends_on macos: ">= :tahoe"

  app "VoxPopuli.app"

  zap trash: [
    "~/Library/Application Support/com.voxpopuli.app",
    "~/Library/Preferences/com.voxpopuli.app.plist",
    "~/Documents/VoxPopuli",
  ]
end
