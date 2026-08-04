class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.2/bitrise-build-cache_3.4.2_darwin_arm64.tar.gz"
      sha256 "9d7dd080240d1b3b7f8cbe7d2c0b40572a0ed3ee66f3225fbe927ec9289c086d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.2/bitrise-build-cache_3.4.2_darwin_amd64.tar.gz"
      sha256 "a94930a9b9d667c71f7fd26df418b38e4dc5eb7ae653e3571937df35a658ccb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.2/bitrise-build-cache_3.4.2_linux_arm64.tar.gz"
      sha256 "dc9561e205e1b1faafbbc37b6f3bed870038882eb8fd4bc74662046415de9d25"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.2/bitrise-build-cache_3.4.2_linux_amd64.tar.gz"
      sha256 "863c54e8742a68a30f609922d0dcd1fec25300bbf9bf6cea1371b6a5f1e5adaa"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
