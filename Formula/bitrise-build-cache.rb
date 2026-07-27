class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.1/bitrise-build-cache_3.2.1_darwin_arm64.tar.gz"
      sha256 "3d8afd88ccf1210eabc19fe2e7a128cdfe909a24987e46274d5ccb1da9530632"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.1/bitrise-build-cache_3.2.1_darwin_amd64.tar.gz"
      sha256 "b74f6dae38b40f3068fa3eb07f7be8e9cdff2065f83b1d2a1df51903952a8f27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.1/bitrise-build-cache_3.2.1_linux_arm64.tar.gz"
      sha256 "b1853c2a9f3ab3e70882d06ba6b86a40b7545a50d1e60e93c15093138987c146"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.1/bitrise-build-cache_3.2.1_linux_amd64.tar.gz"
      sha256 "9859de8f3a3c4506df6f7889e19580f797179b9bf7a5a0f04a655b3ad3506a7a"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
