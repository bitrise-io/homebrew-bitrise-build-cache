class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.0/bitrise-build-cache_3.14.0_darwin_arm64.tar.gz"
      sha256 "67805c9722ee3a05a8a4fde9b76dbcec66a29985564f3cacde8062bb585641e4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.0/bitrise-build-cache_3.14.0_darwin_amd64.tar.gz"
      sha256 "7fd86d18b2c00f4782fde4d3cfefbaeef83865496635e8d6741a18b7c35ed907"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.0/bitrise-build-cache_3.14.0_linux_arm64.tar.gz"
      sha256 "494217a46a0e87f8fa707bd60a3eee7dcd404f75a3b62ebbe678a586c9cdc578"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.0/bitrise-build-cache_3.14.0_linux_amd64.tar.gz"
      sha256 "f3d0c678cf9351eb43eb29e92fcf5f70af0d1afa67d6ff5af4a47ef3127bf85e"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
