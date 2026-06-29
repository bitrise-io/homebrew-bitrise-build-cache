class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.12/bitrise-build-cache_2.8.12_darwin_arm64.tar.gz"
      sha256 "6348d1b9df021e524d55a89370eb7dafa8ba8e4ea557a65f318f4dc8efc704d7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.12/bitrise-build-cache_2.8.12_darwin_amd64.tar.gz"
      sha256 "685cee75f5613b366754a6b233316759bab9d21198c397e01c26ed92f5c193b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.12/bitrise-build-cache_2.8.12_linux_arm64.tar.gz"
      sha256 "2a6d95f6b4a9d570346b2f9460029a8bdfc29d070b75cff14168ee6890f8ff74"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.12/bitrise-build-cache_2.8.12_linux_amd64.tar.gz"
      sha256 "8cd5800fb66d576768f5b55dec40ef7de8bfe641c932815b92f27a54faa45dc7"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
