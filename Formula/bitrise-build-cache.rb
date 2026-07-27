class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.3/bitrise-build-cache_3.2.3_darwin_arm64.tar.gz"
      sha256 "98196944fbca2b41c09d45316c24db8067d039d0b3102ca2e9ac4f1cc5f8a4c1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.3/bitrise-build-cache_3.2.3_darwin_amd64.tar.gz"
      sha256 "bf4eaeff80396c4398bb399bce02111967b774c6fc7868ce3f134b81c9e6bac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.3/bitrise-build-cache_3.2.3_linux_arm64.tar.gz"
      sha256 "c2c011261a91ff34c83ff51f93a04e8fc6ab66b4d2f244ef92bc471662c83419"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.3/bitrise-build-cache_3.2.3_linux_amd64.tar.gz"
      sha256 "17d02228a46d83e7c343fbab75e73c74555d2d38746a5d9761f13976e77a4cee"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
