class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.12.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.3/bitrise-build-cache_3.12.3_darwin_arm64.tar.gz"
      sha256 "a05b2ae1652a333585442e856b3d6cd967a9060010d9f50475fa008f697cfcc1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.3/bitrise-build-cache_3.12.3_darwin_amd64.tar.gz"
      sha256 "118292a55219849a5d5231a03e8b0ac7e51f34ddeaba2275ee2b32eeca88f829"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.3/bitrise-build-cache_3.12.3_linux_arm64.tar.gz"
      sha256 "132eeb45609e26b3603d286fae452dfc283e100967f222fa33342d7e7a7da2ae"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.3/bitrise-build-cache_3.12.3_linux_amd64.tar.gz"
      sha256 "9c541c1592d9dc203bac413f322db8ffc15822590181dee2bb2866607f468d1a"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
