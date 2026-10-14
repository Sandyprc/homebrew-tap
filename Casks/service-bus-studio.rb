cask "service-bus-studio" do
  version "0.1.2"
  sha256 "c0dd0f0a768a15554de462dda5f021bfb07d494a0048acf997bda231bb09bf1d"

  url "https://github.com/Sandyprc/sbs/releases/download/v0.1.2/ServiceBusStudio-0.1.2.dmg"
  name "Service Bus Studio"
  desc "Explore and manage Azure Service Bus queues, topics and messages"
  homepage "https://github.com/Sandyprc/sbs"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Service Bus Studio.app"

  # Not notarized yet: clear the download flag so the first launch opens without the Gatekeeper block.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Service Bus Studio.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/com.sandyprc.servicebusstudio",
    "~/Library/Containers/com.sandyprc.servicebusstudio",
  ]
end
