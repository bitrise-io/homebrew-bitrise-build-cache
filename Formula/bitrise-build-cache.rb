class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.7/bitrise-build-cache_2.6.7_darwin_arm64.tar.gz"
      sha256 "99be0b555f0e46864ee70cbd77311e177de72a2bb9ef45ae7102b4da74d073e1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.7/bitrise-build-cache_2.6.7_darwin_amd64.tar.gz"
      sha256 "29d05188007ae6f8e6dcf20bc1a2e88b6203833e7b55693b594f54bf146d2a79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.7/bitrise-build-cache_2.6.7_linux_arm64.tar.gz"
      sha256 "d3839615b6db8bbcd0902cc4b0d629b7cc97d653d87d9add693a4e3ed3be8b2f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.7/bitrise-build-cache_2.6.7_linux_amd64.tar.gz"
      sha256 "89a88aa3f000ef4ca5da04577eb5afe94f5d3605db7c5d0dc295524d911bdeab"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
