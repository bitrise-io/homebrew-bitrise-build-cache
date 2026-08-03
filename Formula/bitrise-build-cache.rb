class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.0/bitrise-build-cache_3.4.0_darwin_arm64.tar.gz"
      sha256 "bf44bc607b5389e2cb9bb2896029bea376155a90032197d432e5651957c80dff"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.0/bitrise-build-cache_3.4.0_darwin_amd64.tar.gz"
      sha256 "85a571f1d8751070847ef88abc1d41e5f299556a6e7f6fff1f1f2b031487526d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.0/bitrise-build-cache_3.4.0_linux_arm64.tar.gz"
      sha256 "f117876b0d83bb421721e4a515df301a2adc8a8a52adae0d54c038f99804c3cc"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.0/bitrise-build-cache_3.4.0_linux_amd64.tar.gz"
      sha256 "ccfd7ec16f852b05f21d66f4dc1f7b9f62a7458b3a977ec130027a76a21576c5"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
