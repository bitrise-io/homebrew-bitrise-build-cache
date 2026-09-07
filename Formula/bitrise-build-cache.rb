class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.4/bitrise-build-cache_3.8.4_darwin_arm64.tar.gz"
      sha256 "b1ff0136e73f3a0005b3da313141a0d679a10e1b314500cdecc1bf64eb1e7fb6"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.4/bitrise-build-cache_3.8.4_darwin_amd64.tar.gz"
      sha256 "b83627026a92c78411a87a3d2351840f316d1caa8396be8443a8ecb7c5274a3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.4/bitrise-build-cache_3.8.4_linux_arm64.tar.gz"
      sha256 "9c40305853964a45d0cdec5909fa7fca9b214d408139f67d59a3eabc9ba476ea"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.4/bitrise-build-cache_3.8.4_linux_amd64.tar.gz"
      sha256 "ddc025f727b7fe972a686d6159c2357daf98b55ea9ffd10fb85be31a52ad8715"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
