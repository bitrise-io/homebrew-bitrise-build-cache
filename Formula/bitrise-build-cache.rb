class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.3/bitrise-build-cache_3.1.3_darwin_arm64.tar.gz"
      sha256 "b1e47a5cf7b6cb9e777dadc6dd6ef6d193419e54d9b08efbeba9cd4823cf3472"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.3/bitrise-build-cache_3.1.3_darwin_amd64.tar.gz"
      sha256 "da1b7515026695a35069db1f683bba92670284e0602848d6fe4461e4df7804db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.3/bitrise-build-cache_3.1.3_linux_arm64.tar.gz"
      sha256 "6d0f1a3c4925e9cc204ae0847b9f4e930704a5ca797d178aeb78792577b3b653"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.3/bitrise-build-cache_3.1.3_linux_amd64.tar.gz"
      sha256 "617a27b1374c6a179b21264733246e849b702a91ea99ca8a06219731f40ca4ad"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
