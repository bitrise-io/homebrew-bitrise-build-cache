class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.1/bitrise-build-cache_3.4.1_darwin_arm64.tar.gz"
      sha256 "419a780cca0301a426fd4b6157ef17b31e1587ab836a6d8231a2e55ead09f1e0"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.1/bitrise-build-cache_3.4.1_darwin_amd64.tar.gz"
      sha256 "e1f859f2abf07b765fa524f9ba3551661253c938f4405f95a3b5795ddf0be48e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.1/bitrise-build-cache_3.4.1_linux_arm64.tar.gz"
      sha256 "54e35739b95330f14281c8f862bffa1558afb5a51be21af5546f040e9e28509c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.1/bitrise-build-cache_3.4.1_linux_amd64.tar.gz"
      sha256 "4362f5b2c6fa7fa5aea7fb11e667d05e5018a24785637624bb1bc42b351b1bac"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
