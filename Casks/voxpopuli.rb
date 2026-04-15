cask "voxpopuli" do
  version "1.3.8"
  sha256 "9d01e94ad0331b8c26b081b1adf21d40dde7b9e95c37edba2a74d9abb1a9b805"

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
