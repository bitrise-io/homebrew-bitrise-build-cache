class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.3/bitrise-build-cache_3.6.3_darwin_arm64.tar.gz"
      sha256 "d202a2fad99d1cece8fc8aafa36724610eb005f7735f4079e582a650a1ed83d0"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.3/bitrise-build-cache_3.6.3_darwin_amd64.tar.gz"
      sha256 "05317dc176784d82696f858511f7cf2077a6c278177705eedf79bad35022ec4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.3/bitrise-build-cache_3.6.3_linux_arm64.tar.gz"
      sha256 "d9864530dd8f89712777c68bc4b71b0aadfec448810ae1721296f39ec94e70de"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.3/bitrise-build-cache_3.6.3_linux_amd64.tar.gz"
      sha256 "9782c98816ed2dc45333d7346587b27ce1022c9e246e8ff275c8f0d52d4cd376"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
