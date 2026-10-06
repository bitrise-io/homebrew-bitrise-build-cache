class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.0/bitrise-build-cache_3.17.0_darwin_arm64.tar.gz"
      sha256 "23835c76d40b29c40fe4aecae5e190f81af13b1f0cf3fe6767d2ea80446e4b37"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.0/bitrise-build-cache_3.17.0_darwin_amd64.tar.gz"
      sha256 "c44ad58e7ff441a322930de9969a1c8b1a75c313fcd3260927cce7762fcd76e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.0/bitrise-build-cache_3.17.0_linux_arm64.tar.gz"
      sha256 "efc2fd1c14f8392890a4dc7492c78b0196a8ff95b906c3101e36fc4889878c5b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.0/bitrise-build-cache_3.17.0_linux_amd64.tar.gz"
      sha256 "06439c4cd2a2124f1393e1a23a89f5c615d4ed03fbb413def37ac5e4010411a0"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
