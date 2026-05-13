class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.4/bitrise-build-cache_2.6.4_darwin_arm64.tar.gz"
      sha256 "7e9b3e4d857a9cf75d388799ded4ca403b6e07ceac13a7a98238695a9393f609"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.4/bitrise-build-cache_2.6.4_darwin_amd64.tar.gz"
      sha256 "0220641f631e86ab783871e2df9996993c71a5f2d0e8e3a9342d62727c5f69cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.4/bitrise-build-cache_2.6.4_linux_arm64.tar.gz"
      sha256 "4aaef88ef841de1d92e3ca038977b6ea3d3d413bbe6bfea488f2304d2bb71946"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.4/bitrise-build-cache_2.6.4_linux_amd64.tar.gz"
      sha256 "fee794a16d02ea344a778d5a5a4c1e6f9ead4ff9f60a441b8ecf29195a749ea2"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
