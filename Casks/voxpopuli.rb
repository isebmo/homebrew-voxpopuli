cask "voxpopuli" do
  version "1.3.14"
  sha256 "26c067a33c8ba30a2c2b3aa7b5cd1ff74c5079cdd69b781eaf4fce69cb1b91ff"

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
