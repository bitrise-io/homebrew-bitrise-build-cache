class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_arm64.tar.gz"
      sha256 "36de2f0f83b9ef97c8c76b56977da325f2cd94bc9e08fe48df89d809db150cb4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_amd64.tar.gz"
      sha256 "65a8d5f374b511944efea6c216809d3d2a772652ddeac5374c0e9ae3a6686775"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_arm64.tar.gz"
      sha256 "83f470876f8008d2f310b1c48d32b938cc1817735bc8ac1a8efdda3e95d91e88"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_amd64.tar.gz"
      sha256 "56781a978934881743681c4fb8f41475f27d36e42d328fff95097a554d7774b4"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
