class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.1/bitrise-build-cache_2.8.1_darwin_arm64.tar.gz"
      sha256 "9e0cf4912c08ccf6e771cb3f4e13db34f7b53c398808530ca695f57796865807"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.1/bitrise-build-cache_2.8.1_darwin_amd64.tar.gz"
      sha256 "f1e8f9b0ea78e7f4e7995f20e4169509c4dd1007be49198e4281d7be37d7d44a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.1/bitrise-build-cache_2.8.1_linux_arm64.tar.gz"
      sha256 "f64e94b857a1acae8e2a0ce9be02bb250c4678621c8681e82ca683120f31696d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.1/bitrise-build-cache_2.8.1_linux_amd64.tar.gz"
      sha256 "5db502ed7cfddf13fda099dc0368313f5f2b4e592ac5c1e2ad0c191806ef0ba3"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
