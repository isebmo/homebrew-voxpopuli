cask "voxpopuli" do
  version "1.3.9"
  sha256 "294cbdf00ca530d40cd435f4112f47cd3ba6a3736a130f4abbd46b2415fce31d"

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
