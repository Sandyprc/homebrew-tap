cask "service-bus-studio" do
  version "0.1.1"
  sha256 "f7f3b0a0fc50cb20bebebe83b0776207504078b5db47637da68f55ecdefd0c1e"

  url "https://github.com/Sandyprc/sbs/releases/download/v0.1.1/ServiceBusStudio-0.1.1.dmg"
  name "Service Bus Studio"
  desc "Explore and manage Azure Service Bus queues, topics and messages"
  homepage "https://github.com/Sandyprc/sbs"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Service Bus Studio.app"

  zap trash: [
    "~/Library/Application Scripts/com.sandyprc.servicebusstudio",
    "~/Library/Containers/com.sandyprc.servicebusstudio",
  ]
end
