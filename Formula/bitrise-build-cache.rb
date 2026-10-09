class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.4/bitrise-build-cache_3.17.4_darwin_arm64.tar.gz"
      sha256 "9d60b865ee64f8452c28fc48c81dde8c6106671ead2a85de87743d54879e78d8"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.4/bitrise-build-cache_3.17.4_darwin_amd64.tar.gz"
      sha256 "e4e6466c18dce114f890dbe3b76cf14fe29955fb7df1b74cef7a03c4d2291063"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.4/bitrise-build-cache_3.17.4_linux_arm64.tar.gz"
      sha256 "c7d48121a96b6dee95902663089a293d08b2fcb5aa8ff57f64b559246cfcd0cd"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.4/bitrise-build-cache_3.17.4_linux_amd64.tar.gz"
      sha256 "502c1dde9568d72ea0747611436c0ac27ad0f6f6cce469b119aeab8c6a2c824a"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
