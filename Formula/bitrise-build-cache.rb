class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.3/bitrise-build-cache_2.6.3_darwin_arm64.tar.gz"
      sha256 "db7e71858f3a1988edeb4c64bb57ab3b7b65e8b5a688fa0861ba0ce477b2640a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.3/bitrise-build-cache_2.6.3_darwin_amd64.tar.gz"
      sha256 "34cf2702ae954e622a0d4fd69a09cddd73aae4b5b5cf114889f86ded7d6e12bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.3/bitrise-build-cache_2.6.3_linux_arm64.tar.gz"
      sha256 "3ac0bc716e9e2f6d631baee5e0f81987d8ebd3802c877f350a7eaccb2d59369c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.3/bitrise-build-cache_2.6.3_linux_amd64.tar.gz"
      sha256 "7dd66084ffa7af2ac8f3f5c80001524250d8c007a06acc49cacaa04c2cfc2447"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
