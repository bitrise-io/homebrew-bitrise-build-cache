class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.10.0/bitrise-build-cache_3.10.0_darwin_arm64.tar.gz"
      sha256 "3019e67922742c0a562dd758f5b86855db23e68eaf8d22fa7d845ce78534b342"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.10.0/bitrise-build-cache_3.10.0_darwin_amd64.tar.gz"
      sha256 "60fb66031b3d68c3bc340ba000af91288c0e755c054ca892a8de30f92316c709"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.10.0/bitrise-build-cache_3.10.0_linux_arm64.tar.gz"
      sha256 "e9ef5a37f46f311dc5a4d9271412691d3add61fcafbbce6777ae1d09fa86fefb"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.10.0/bitrise-build-cache_3.10.0_linux_amd64.tar.gz"
      sha256 "d15728834ab7ff6f3bc1d3fb22ce873300222bcc7f166236ab779f791bd20bd6"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
