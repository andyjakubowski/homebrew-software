cask "sketch74" do
  version "74.1,128920"
  sha256 "7ab2c3677340385936ba312b2006408c1793f40ae84ae8680855f07a12a033e4"

  url "https://download.sketchapp.com/sketch-#{version.before_comma}-#{version.after_comma}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketchapp.com/"

  livecheck do
      url "https://download.sketchapp.com/sketch-versions.xml"
      strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Sketch.app"

  zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.sfl*",
      "~/Library/Application Support/com.bohemiancoding.sketch3",
      "~/Library/Caches/com.bohemiancoding.sketch3",
      "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3",
      "~/Library/Logs/com.bohemiancoding.sketch3",
      "~/Library/Preferences/com.bohemiancoding.sketch3.LSSharedFileList.plist",
      "~/Library/Preferences/com.bohemiancoding.sketch3.plist",
      "~/Library/Cookies/com.bohemiancoding.sketch3.binarycookies",
      "~/Library/HTTPStorages/com.bohemiancoding.sketch3.binarycookies",
      "~/Library/Saved Application State/com.bohemiancoding.sketch3.savedState",
      "~/Library/Autosave Information/com.bohemiancoding.sketch3.plist",
  ]
end