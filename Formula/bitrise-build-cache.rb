class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.5/bitrise-build-cache_3.19.5_darwin_arm64.tar.gz"
      sha256 "95f1c36a64b30f37d7d7527c9840d3c7ccea772e014b617a9f6b5c994558595a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.5/bitrise-build-cache_3.19.5_darwin_amd64.tar.gz"
      sha256 "d9e44e31504752f368b086d2f1ba2e2a1612b0a122850e1da64f2345ee2a803b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.5/bitrise-build-cache_3.19.5_linux_arm64.tar.gz"
      sha256 "8d47776be8b07bf7034723c5db1c6bdf7a6e67807087ea080f4eebe48f1cecae"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.5/bitrise-build-cache_3.19.5_linux_amd64.tar.gz"
      sha256 "6f44562259029c433d4f595f00dcd8ec698617b193f230f4c8c1ea51d7b2a574"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
