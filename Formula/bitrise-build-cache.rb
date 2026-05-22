class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.4-alpha.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4-alpha.1/bitrise-build-cache_2.7.4-alpha.1_darwin_arm64.tar.gz"
      sha256 "481268557c94b2abef6d71220e087736b26085c8f9b94631f4b677fc8b3b4da5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4-alpha.1/bitrise-build-cache_2.7.4-alpha.1_darwin_amd64.tar.gz"
      sha256 "a43dcb81a7f6707babe6fdf04d97fe94ebef0f816df810eb09d60a489da44208"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4-alpha.1/bitrise-build-cache_2.7.4-alpha.1_linux_arm64.tar.gz"
      sha256 "7f9f496de41bfa3ad66434d9ce35052f8b7e6f3a526ca13e7347f2f9bb7dfe4e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4-alpha.1/bitrise-build-cache_2.7.4-alpha.1_linux_amd64.tar.gz"
      sha256 "85edfe75acd73d75e8dc4f89cf8f533ab374f22c91f9d84d0a05b70135d23847"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
