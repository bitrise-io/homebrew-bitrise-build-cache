class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.3/bitrise-build-cache_3.19.3_darwin_arm64.tar.gz"
      sha256 "d4fc5d400b2114e07e6fde28b56fd1572960f274e516a60767a4682fa6f80f2e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.3/bitrise-build-cache_3.19.3_darwin_amd64.tar.gz"
      sha256 "db34303a4616639f6dd86fdb393504f1f942402cb390a9894cccd16b27b86e62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.3/bitrise-build-cache_3.19.3_linux_arm64.tar.gz"
      sha256 "1c41ffbf98d3e9b6d92ac6e9fae7e089174eb847a45de39a3fc8872d3fd6571f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.3/bitrise-build-cache_3.19.3_linux_amd64.tar.gz"
      sha256 "2868b1adb41ea55af002d29c7ef363f242ede42a1ef97732678d65982075671d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
