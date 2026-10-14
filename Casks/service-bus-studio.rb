cask "service-bus-studio" do
  version "0.1.0"
  sha256 "a67c4d09f32f36a934c36cbfd09611de21ee83ebe08b3d0adb2026dda772960d"

  url "https://github.com/Sandyprc/homebrew-tap/releases/download/v0.1.0/ServiceBusStudio-0.1.0.dmg"
  name "Service Bus Studio"
  desc "Explore and manage Azure Service Bus queues, topics and messages"
  homepage "https://github.com/Sandyprc/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Service Bus Studio.app"

  zap trash: [
    "~/Library/Application Scripts/com.sandyprc.servicebusstudio",
    "~/Library/Containers/com.sandyprc.servicebusstudio",
  ]
end
