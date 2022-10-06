cask "crystalmaker" do
  version "10.8.0"
  sha256 :no_check

  url "http://crystalmaker.com/downloads/crystalmaker_mac.zip"
  name "CrystalMaker"
  desc "Visualize crystal and molecular structures"
  homepage "http://crystalmaker.com/index.html"

  livecheck do
    url "http://crystalmaker.com/support/updates/VersionData-CMM.xml"
    regex(/<version[^>]+?number=["']?v?(\d+(?:\.\d+)+)["']?[^>]*?>/i)
  end

  depends_on macos: ">= :sierra"

  app "CrystalMaker.app"

  zap trash: [
    "~/Library/Application Scripts/com.crystalmaker.crystalmaker.v#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.crystalmaker.crystalmaker.v#{version.major}.sfl2",
    "~/Library/Containers/com.crystalmaker.crystalmaker.v#{version.major}",
  ]
end
