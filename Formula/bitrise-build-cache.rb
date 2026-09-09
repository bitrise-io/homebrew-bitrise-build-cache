class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.5/bitrise-build-cache_3.8.5_darwin_arm64.tar.gz"
      sha256 "033568634985b20ab02aa1889de29433e5d33660be510b7ebf6f442873581175"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.5/bitrise-build-cache_3.8.5_darwin_amd64.tar.gz"
      sha256 "6ac2cc2915dd0faab0ed1100b53b8e55960f68744e4547cda5587aa7b19a7c75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.5/bitrise-build-cache_3.8.5_linux_arm64.tar.gz"
      sha256 "e1af2f2553f43195a9b963ba9ecdc2faf18e8592866da02abe8f5035a14788d7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.5/bitrise-build-cache_3.8.5_linux_amd64.tar.gz"
      sha256 "c4781022f499776d264ed4cae3b1d671abe7345ed58ffe5c841226dd9e6518be"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
