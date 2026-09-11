class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.1/bitrise-build-cache_3.9.1_darwin_arm64.tar.gz"
      sha256 "78d36abb89f7625dfdc963bb2934c76819d43ec71a7cf9830c6e11d6d05ddd16"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.1/bitrise-build-cache_3.9.1_darwin_amd64.tar.gz"
      sha256 "58837d03185d0954af53b89862b452c4d385e02cfd295f26865a91b2831ffd68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.1/bitrise-build-cache_3.9.1_linux_arm64.tar.gz"
      sha256 "fa2ef9692c77cbabf2b70febebcc3119b5308a210529a38e843a2db93af4bcee"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.1/bitrise-build-cache_3.9.1_linux_amd64.tar.gz"
      sha256 "5ebcecb8432bf323473b14a6846837e74f8fb424dcead521d86809377a30488d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
