class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.20.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.1/bitrise-build-cache_3.20.1_darwin_arm64.tar.gz"
      sha256 "9b60d5b571bfcc444a19d117a9bbc572becae45cea241222b96d0b2c6aeb97c7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.1/bitrise-build-cache_3.20.1_darwin_amd64.tar.gz"
      sha256 "34c3a78cb1f9723b51eb83949586f449164ab10f6835805111ad4343d7f05d4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.1/bitrise-build-cache_3.20.1_linux_arm64.tar.gz"
      sha256 "0187a5aa0999f30172814db3d80b29f875f152eaa0feccbf5dbee96e884ccdad"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.1/bitrise-build-cache_3.20.1_linux_amd64.tar.gz"
      sha256 "619ff78ad1df674fceb4705cd6d0f5af80f57d7a4c8d60d0a77f905be82834f6"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
