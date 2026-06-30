class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.13/bitrise-build-cache_2.8.13_darwin_arm64.tar.gz"
      sha256 "d778423a844b0fb55771b54e6f73dee7905f75c763442c233dccfc180d578c52"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.13/bitrise-build-cache_2.8.13_darwin_amd64.tar.gz"
      sha256 "eee80a3b4a705fb61e0938f8581b7123051dfa5fbe965e1fbb207af20598c7b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.13/bitrise-build-cache_2.8.13_linux_arm64.tar.gz"
      sha256 "9cc488666fdbe947aea6b77856913c78cd3bb83c67ff07c684eec4eac6d40ad5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.13/bitrise-build-cache_2.8.13_linux_amd64.tar.gz"
      sha256 "8db3446514912e5376b8019c010b818666b78fe4b9065dc999b3a47f5ae660c3"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
