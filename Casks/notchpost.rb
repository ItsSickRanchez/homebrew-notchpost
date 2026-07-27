cask "notchpost" do
  version "0.27.0"
  sha256 "f5e345fdda584655d607f06e3cb6e3097eafed714739b8e8cb461e40de7beace"

  url "https://github.com/ItsSickRanchez/notchpost-dist/releases/download/v#{version}/NotchPost-#{version}.dmg"
  name "NotchPost"
  desc "Interactive Claude Code approvals in the MacBook notch"
  homepage "https://github.com/ItsSickRanchez/notchpost-dist"

  auto_updates true          # Sparkle updates the app in place; brew stays out of the way
  depends_on macos: :ventura

  app "NotchPost.app"

  caveats <<~EOS
    NotchPost ist selbst-signiert (nicht App-Store-notarisiert). Beim ERSTEN Start:
    Rechtsklick auf NotchPost in "Programme" -> "Öffnen" -> im Dialog nochmal "Öffnen".
    Danach führt der Einrichtungs-Assistent durch Hook-Verbindung und Autostart.
    Voraussetzung: Claude Code muss installiert sein.
  EOS
end
