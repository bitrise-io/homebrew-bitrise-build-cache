class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.0/bitrise-build-cache_3.2.0_darwin_arm64.tar.gz"
      sha256 "3815c9684a216f56805353a0f9df94dfe6b2cb99a020810f90440679f80cd654"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.0/bitrise-build-cache_3.2.0_darwin_amd64.tar.gz"
      sha256 "baa28f2833e22363188464d7090820b2bd7e6906a403f35da436c7037ebfb984"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.0/bitrise-build-cache_3.2.0_linux_arm64.tar.gz"
      sha256 "c4672cda4261504c43b990e99c46bedf5f75be5083d80d59aed7f2f0ac9a538c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.0/bitrise-build-cache_3.2.0_linux_amd64.tar.gz"
      sha256 "7a9bebf6736390bb5bb710ea0339670b7a2fdb7a70e25d87f46b6bec89c6b41c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
