class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.3/bitrise-build-cache_3.4.3_darwin_arm64.tar.gz"
      sha256 "7ca078822abc8c050bb9cbdd7272403480fdf91d1529b808cd330d0f80f674f4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.3/bitrise-build-cache_3.4.3_darwin_amd64.tar.gz"
      sha256 "14cd6e11c8fe896cc49bd41913462c67c1fa453ac9845fb50846b00a683e048d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.3/bitrise-build-cache_3.4.3_linux_arm64.tar.gz"
      sha256 "0d7f580ab04452bf424edb3e4cde6388c1437face9546fa669ea2d43038d0220"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.3/bitrise-build-cache_3.4.3_linux_amd64.tar.gz"
      sha256 "af3d5ff9bf248e37d8583a20739a5a03c21ac488324eee7bb0dde7e3aa9a0746"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
