cask "voxpopuli" do
  version "1.2.1"
  sha256 "8f0843e8ecba3143cbea0c52e88cbb226fbea5ad5252c744f6019d46401e9c27"

  url "https://dl.tfada.fr/voxpopuli/homebrew/VoxPopuli-#{version}.dmg"
  name "VoxPopuli"
  desc "Native macOS real-time voice transcription using Apple Neural Engine"
  homepage "https://tfada.fr"

  depends_on macos: ">= :sonoma"

  app "VoxPopuli.app"

  zap trash: [
    "~/Library/Application Support/com.voxpopuli.app",
    "~/Library/Preferences/com.voxpopuli.app.plist",
    "~/Documents/VoxPopuli",
  ]
end
