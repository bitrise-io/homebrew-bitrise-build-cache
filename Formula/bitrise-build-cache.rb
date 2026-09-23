class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.2/bitrise-build-cache_3.12.2_darwin_arm64.tar.gz"
      sha256 "a5c373b1926a2a81c9d77103f6b4f7c736b88b7429509a91faf6ea14638d6cc4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.2/bitrise-build-cache_3.12.2_darwin_amd64.tar.gz"
      sha256 "2e60b11470e6af8cb535fbfc77686c0946daa0fedf84be0ca7516ae1eee44a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.2/bitrise-build-cache_3.12.2_linux_arm64.tar.gz"
      sha256 "16bf3689c0040d7d9763b6435dc7a36b63f8073bc70cacb437103ce709bde489"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.2/bitrise-build-cache_3.12.2_linux_amd64.tar.gz"
      sha256 "a597c154fca7884e691917d7f25302ea739371157fc52158951fc8c95c9a268e"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
