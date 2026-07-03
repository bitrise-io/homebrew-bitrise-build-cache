class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_arm64.tar.gz"
      sha256 "e3ccc3ce6d63387c2aa514149548551f60a0cd2abc8e5c955555804eff208964"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_amd64.tar.gz"
      sha256 "492f7fd8feaee7791b57ba4f3dc5a059a8f61a5a714e6513a5044826d378f520"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_arm64.tar.gz"
      sha256 "d6ee550c86ad6bce3de5c564d74f5b2b9db36f486560830c5e9085e4bc316e25"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_amd64.tar.gz"
      sha256 "26c38c9ea136dde8ff40a9130408c628f24fdf1cbabf9a4a3901cd18babb167b"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
