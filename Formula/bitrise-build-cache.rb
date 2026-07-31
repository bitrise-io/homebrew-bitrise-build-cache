class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.3.0/bitrise-build-cache_3.3.0_darwin_arm64.tar.gz"
      sha256 "4b9847f58236df4b52219169e3945c7df3cff0d7652a9cd665c335d3bfa728ba"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.3.0/bitrise-build-cache_3.3.0_darwin_amd64.tar.gz"
      sha256 "18bdce7c53544980648fabcc40e5eb5562293b5ae886fba82217fcdf6e79de9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.3.0/bitrise-build-cache_3.3.0_linux_arm64.tar.gz"
      sha256 "beffc48413537d31457440136c8b5bb20b8970d0f0dc720be03408648d3c94fc"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.3.0/bitrise-build-cache_3.3.0_linux_amd64.tar.gz"
      sha256 "4411c681c1a024b1ef7555ef8149d858576425e2a3bf6b8987ac996b7350631b"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
