class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.0/bitrise-build-cache_3.5.0_darwin_arm64.tar.gz"
      sha256 "47584092cf4561a46ed10469ef2edd01dd2a760545b4308d8db4bd6d2c8bab85"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.0/bitrise-build-cache_3.5.0_darwin_amd64.tar.gz"
      sha256 "eddfe13e03bcdff98b19a7eab4c998c19365974404cd3b5c008897bca3e5bbc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.0/bitrise-build-cache_3.5.0_linux_arm64.tar.gz"
      sha256 "48c5232cd6aa58c90ea971e7b3a92d0b0b0271b3dcbc0583eb80141ce828f932"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.0/bitrise-build-cache_3.5.0_linux_amd64.tar.gz"
      sha256 "4cba8a2303eeaf4b4f87f2949673edf8aacdb6678c65ccbdd46a7cb85b6de3da"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
