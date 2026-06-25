class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.8/bitrise-build-cache_2.8.8_darwin_arm64.tar.gz"
      sha256 "a580ea4c1770401f9973fd642058dc78ce4c646dd580eccaccb009e8808a900f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.8/bitrise-build-cache_2.8.8_darwin_amd64.tar.gz"
      sha256 "b49e5880cc53e2588e79fb1545a21286582c3ba5cbc0798035c009702d608e39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.8/bitrise-build-cache_2.8.8_linux_arm64.tar.gz"
      sha256 "7d8e699a81999142a5d7df8b1dbabe8922b78a6f2cb9163b4172fb2736326094"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.8/bitrise-build-cache_2.8.8_linux_amd64.tar.gz"
      sha256 "50e50a40eba4118f497fab7c55908ed1b9407c72e5bc784c9d3b9b293553d310"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
