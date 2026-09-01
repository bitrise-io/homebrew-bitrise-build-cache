class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.9/bitrise-build-cache_3.6.9_darwin_arm64.tar.gz"
      sha256 "cc732c6766933cfdb9c311c00ec341c9c3e337b99c61519440c5f785fa06e391"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.9/bitrise-build-cache_3.6.9_darwin_amd64.tar.gz"
      sha256 "fb9a623f94d712135d3d89aabcc3ea1485d0dd79c55c06751b53a27889b9c270"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.9/bitrise-build-cache_3.6.9_linux_arm64.tar.gz"
      sha256 "019d8542113ccadac101c511e8b859dae45c1420f514aac5fa76b27c48bfcb03"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.9/bitrise-build-cache_3.6.9_linux_amd64.tar.gz"
      sha256 "6b5814486c3e356621532585b79e83d6f022f5dc387068066d3844fca42edc82"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
