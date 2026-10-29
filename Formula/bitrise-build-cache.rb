class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.18.0/bitrise-build-cache_3.18.0_darwin_arm64.tar.gz"
      sha256 "7c9aa21f002207c38b3bac0db6c94b3f95c480c0eb00a58bcc3a1db359829e15"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.18.0/bitrise-build-cache_3.18.0_darwin_amd64.tar.gz"
      sha256 "93aae9917bad8f4945db2f8932d602c0c56945409740cb124292974e51bc720f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.18.0/bitrise-build-cache_3.18.0_linux_arm64.tar.gz"
      sha256 "cce938fe8b1e26629b89390f2a3aee8604b7c528b4a7a52831aefe3f4f5cbe3e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.18.0/bitrise-build-cache_3.18.0_linux_amd64.tar.gz"
      sha256 "5fa7ccf84d928ee54fcc5f0ae6b563082ab11908cc4705800592e56a2a5e75a5"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
