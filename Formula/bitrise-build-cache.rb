class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.1/bitrise-build-cache_3.14.1_darwin_arm64.tar.gz"
      sha256 "afe2dbc666c1001b4ce45dee6e660936d4aa60512c3c978ff88e43b5d50d86a1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.1/bitrise-build-cache_3.14.1_darwin_amd64.tar.gz"
      sha256 "8b0b67da9ee3409f9138bc8c8401202d3c625180e3d445ca854c2c46ad076029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.1/bitrise-build-cache_3.14.1_linux_arm64.tar.gz"
      sha256 "af00aa9ad60c07cda06b1ecffa69c3f0ad98d220ce83948f93f841a59bb43f22"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.14.1/bitrise-build-cache_3.14.1_linux_amd64.tar.gz"
      sha256 "4a399c51e85ca45ac2dd984e16d5b16112edc139422fd2a8102db8721f14e432"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
