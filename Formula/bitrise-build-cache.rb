class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.11/bitrise-build-cache_2.8.11_darwin_arm64.tar.gz"
      sha256 "c3d3d085f6194ca45e67c29d903632155a4257476c3b6d20e176425354cc24a5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.11/bitrise-build-cache_2.8.11_darwin_amd64.tar.gz"
      sha256 "95a86c7c67c0641454eba8424690bb63898ace8bb2b5cc7b784bde962364b731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.11/bitrise-build-cache_2.8.11_linux_arm64.tar.gz"
      sha256 "4f3e42d2d61ff374bfe3a8ef9a478bb5fe2cf2c9a871a68c1de993541083447c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.11/bitrise-build-cache_2.8.11_linux_amd64.tar.gz"
      sha256 "f50bf536e485e8a16d2f77fefb625b5d69d933dcca0f3d6ec9b0df03cb986a09"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
