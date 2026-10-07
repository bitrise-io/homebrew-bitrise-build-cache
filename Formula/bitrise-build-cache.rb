class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.2/bitrise-build-cache_3.17.2_darwin_arm64.tar.gz"
      sha256 "281b3b28aa3b02ec8d130e0c2e8c84243baa01b03345ca0beb1e3fe65e5acb2e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.2/bitrise-build-cache_3.17.2_darwin_amd64.tar.gz"
      sha256 "f9cdf7d58fc3d97136ec247c24eeb19cadff6c6ae4f821269f98f726479ff767"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.2/bitrise-build-cache_3.17.2_linux_arm64.tar.gz"
      sha256 "d02a3c39a677e376dc58d126513475a714b6d231201410e83019d89301e6fabc"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.2/bitrise-build-cache_3.17.2_linux_amd64.tar.gz"
      sha256 "b4665b0d35e66c201356c3d1fc5956de098666e2994badb9e8f12aee75764869"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
