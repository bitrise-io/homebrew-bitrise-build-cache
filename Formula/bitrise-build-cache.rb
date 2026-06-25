class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.7/bitrise-build-cache_2.8.7_darwin_arm64.tar.gz"
      sha256 "2394d595fd39f212ff4ce0ea2c428ff5a881b3f2369644afb0f923c1f367ebfd"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.7/bitrise-build-cache_2.8.7_darwin_amd64.tar.gz"
      sha256 "2031d91e85d2f0aebdb595043f36c8e565f01467a1e330d27ebaf097b983950d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.7/bitrise-build-cache_2.8.7_linux_arm64.tar.gz"
      sha256 "42fba74e3b2d282201b74c715b69018b8c30695ecd44c32e16a3b6a1776d6828"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.7/bitrise-build-cache_2.8.7_linux_amd64.tar.gz"
      sha256 "cd984d40a9ed192920562be05f208409a844ce109761ad37291391e72d83b5f3"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
