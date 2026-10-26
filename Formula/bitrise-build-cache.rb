class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.6/bitrise-build-cache_3.17.6_darwin_arm64.tar.gz"
      sha256 "8ab5eb90f0cc677c05fc21d21823077084babbd5756d01bec6966937aca5b668"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.6/bitrise-build-cache_3.17.6_darwin_amd64.tar.gz"
      sha256 "bd3067ba2fec9b291801fe77df1a234571ee53c92f28c12ddeb1ede862782463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.6/bitrise-build-cache_3.17.6_linux_arm64.tar.gz"
      sha256 "df4043770107323dc6fea3ca30df250b024b950b867a0d06c98b2292861c4871"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.6/bitrise-build-cache_3.17.6_linux_amd64.tar.gz"
      sha256 "f788909b9ff3e02b75db87c35f2f96ce787b1cb0a323376c9897791d3cc09dc0"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
