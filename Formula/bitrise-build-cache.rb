class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.4/bitrise-build-cache_2.8.4_darwin_arm64.tar.gz"
      sha256 "9d82f6c33c7ad3d6231b600a6bcff138563755f4049c8edd448dc00ba3d561f4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.4/bitrise-build-cache_2.8.4_darwin_amd64.tar.gz"
      sha256 "92a6931a25ce97e9a4b9969a21fbce8ec86100ccd9759ab0dab83f5c5ac6a9cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.4/bitrise-build-cache_2.8.4_linux_arm64.tar.gz"
      sha256 "a540a8d46da42f50e6ef473ef8cb5adac757320f60348f9ca5de997793d08a13"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.4/bitrise-build-cache_2.8.4_linux_amd64.tar.gz"
      sha256 "7b073585c16b93ae27d2d36a6027fe317d1fb99f4cf88267f5bc0d6e9572b156"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
