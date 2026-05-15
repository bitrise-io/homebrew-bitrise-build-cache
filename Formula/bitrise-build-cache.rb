class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.1/bitrise-build-cache_2.7.1_darwin_arm64.tar.gz"
      sha256 "b1afaf5bfd090b7ab575f383d350a2731d9d94f53b35ea1758d6f5ec040b686b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.1/bitrise-build-cache_2.7.1_darwin_amd64.tar.gz"
      sha256 "47e087067c613ad961431d69799d675ba53e125246f5d4581ebd4e24c206b7df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.1/bitrise-build-cache_2.7.1_linux_arm64.tar.gz"
      sha256 "5acaaeac8bf621f1d366c2b70d9fe4e99a88fafedb4835174694b6c8561d5a37"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.1/bitrise-build-cache_2.7.1_linux_amd64.tar.gz"
      sha256 "ecf11c9918c72bba15bce0d48dc41e0c215b1bd9c43d3eaf142f483f82bbf6f5"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
