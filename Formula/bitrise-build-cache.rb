class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.1/bitrise-build-cache_3.0.1_darwin_arm64.tar.gz"
      sha256 "10a7aeb55e973d9023a6fc64e36a23e3c1db98868ea9747c332d9ecfc6e73c8a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.1/bitrise-build-cache_3.0.1_darwin_amd64.tar.gz"
      sha256 "89e8339a0e4399b889e005146e36661b6fba6fb3073222936fb6cf6a52024db0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.1/bitrise-build-cache_3.0.1_linux_arm64.tar.gz"
      sha256 "a5c36f4500293153236aaed4f3c595b5130a8b3471c276e3b7347d438f3e89e5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.1/bitrise-build-cache_3.0.1_linux_amd64.tar.gz"
      sha256 "98e1c671e5d29eee05e790c2cab6f2f6cb052daa8e9f7017d9640b7be036510c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
