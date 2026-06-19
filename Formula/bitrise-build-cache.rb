class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.5/bitrise-build-cache_2.8.5_darwin_arm64.tar.gz"
      sha256 "31f3eb06c8754e5bbed7572530712ab92822f27b95bd31a8553a02653a78ef8a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.5/bitrise-build-cache_2.8.5_darwin_amd64.tar.gz"
      sha256 "05a15410e526e93398a227ded37555940fdee87fe4c4f3df54a9b92257c2fccb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.5/bitrise-build-cache_2.8.5_linux_arm64.tar.gz"
      sha256 "95b49d9911cd8c4ea1e4e9360760b88a813babfa84dcd010d6921b2abc2ec961"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.5/bitrise-build-cache_2.8.5_linux_amd64.tar.gz"
      sha256 "bce5480c920487ae6d646a7eb026e02439286e91f0fef25d5eab01b2e023206c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
