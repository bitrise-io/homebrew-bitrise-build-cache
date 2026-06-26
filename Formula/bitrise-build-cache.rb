class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.10/bitrise-build-cache_2.8.10_darwin_arm64.tar.gz"
      sha256 "563cc9a523995ce12c0a160e2969489e508ce942b42e45dfdbd2044816c33184"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.10/bitrise-build-cache_2.8.10_darwin_amd64.tar.gz"
      sha256 "d413be95d7d82546554daadb83ac7b9eda8e035b347437e631a8784237c22700"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.10/bitrise-build-cache_2.8.10_linux_arm64.tar.gz"
      sha256 "8e596c6d73dcb22a4122ad6d6dd4aa20696741321c2d38b30c45b662962a23a8"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.10/bitrise-build-cache_2.8.10_linux_amd64.tar.gz"
      sha256 "639ddb98fe98fb8ee35cc3ad70cdefc1bc208afbe3e3594fa8c1616298145b8b"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
