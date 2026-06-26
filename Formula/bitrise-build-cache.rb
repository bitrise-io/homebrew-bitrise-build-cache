class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.9/bitrise-build-cache_2.8.9_darwin_arm64.tar.gz"
      sha256 "4abb5e287f1deb2b6c62436006202d8ba2500514784049bb448cb233754dc419"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.9/bitrise-build-cache_2.8.9_darwin_amd64.tar.gz"
      sha256 "42c93a0ac7f0bdc92111ab8f6a38e4df8933be0f8376dd09864c30cf23be7fb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.9/bitrise-build-cache_2.8.9_linux_arm64.tar.gz"
      sha256 "b0a18ffa9faa2cd53c1c797253ca4722086c029e0e1ece7b51f34a8c771f81a5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.9/bitrise-build-cache_2.8.9_linux_amd64.tar.gz"
      sha256 "05450b3f0d8d14277df3633463b91a72ef53e114f9eee5b9e843ddc92270cf05"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
