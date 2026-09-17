class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.9.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.3/bitrise-build-cache_3.9.3_darwin_arm64.tar.gz"
      sha256 "7dc76e8cb396687a5cdf172c9dd1f885ee84e4545d06efc1dbda5e5ff263b991"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.3/bitrise-build-cache_3.9.3_darwin_amd64.tar.gz"
      sha256 "43d82a5958d3e59cb6d49402a9979db66caf4483632c2cbb0bcaa3b579926fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.3/bitrise-build-cache_3.9.3_linux_arm64.tar.gz"
      sha256 "c962449df00ad2f846715686dddbc55b2c10a2b5ce44c816b2a0d951192fcc02"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.3/bitrise-build-cache_3.9.3_linux_amd64.tar.gz"
      sha256 "3dc0a5411410e76cf4cafd5643b5d2fde128cd73b36d3a39fbf8ff6c3858785e"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
