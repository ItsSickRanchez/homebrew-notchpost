cask "notchpost" do
  version "0.22.0"
  sha256 "15217dd57d1b08bc5404f5eed55291c9ad1dfbfbdd5b72a54b4e91403abca9c0"

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
