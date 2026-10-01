class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.15.0/bitrise-build-cache_3.15.0_darwin_arm64.tar.gz"
      sha256 "71fc55321127d2b9b34c96dfbf172d489cf17c43cc7beb9fd41d4f68992408e2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.15.0/bitrise-build-cache_3.15.0_darwin_amd64.tar.gz"
      sha256 "f6716c5dc95a7438840031c8094e2a220e861e417f12f1028d27b0ec508d458a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.15.0/bitrise-build-cache_3.15.0_linux_arm64.tar.gz"
      sha256 "2c0771a6113d0c9e40803c2f5a57fcbc6c22a1d8e0e4e809c91fd361fb905685"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.15.0/bitrise-build-cache_3.15.0_linux_amd64.tar.gz"
      sha256 "f430b99439e7d0ed7b37c72a09eda4d909431179f0716b3c46ac733ea605ac3d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
