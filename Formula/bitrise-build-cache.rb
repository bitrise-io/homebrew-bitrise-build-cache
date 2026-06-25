class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.6/bitrise-build-cache_2.8.6_darwin_arm64.tar.gz"
      sha256 "5e92cadf793ae5b0413c8531ab94799869c201d382820fcc27f6bd757264566b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.6/bitrise-build-cache_2.8.6_darwin_amd64.tar.gz"
      sha256 "0fbf553ed9bff38aef9d73fde4d6faa815362e7176c324c3f317aea0bcf0d0ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.6/bitrise-build-cache_2.8.6_linux_arm64.tar.gz"
      sha256 "c3a7ada7a5abb4af9f9bccfe9e40025376eacf44b9ae3d574b0259bad3582c2f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.6/bitrise-build-cache_2.8.6_linux_amd64.tar.gz"
      sha256 "8e93d4b00adbae3d358f17d9a4edf04373ff9719e979bd1ec9cdf146c893f41f"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
