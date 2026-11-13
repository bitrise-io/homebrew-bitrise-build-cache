class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.6/bitrise-build-cache_3.19.6_darwin_arm64.tar.gz"
      sha256 "5aad0229b2edcd70be5bf178cc2e2bfb7e55db7b72a995f3ef590049dee2b63e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.6/bitrise-build-cache_3.19.6_darwin_amd64.tar.gz"
      sha256 "603c696f0547d02028ba35607f4232e57cbf007e699dc2705ae7605108e3e387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.6/bitrise-build-cache_3.19.6_linux_arm64.tar.gz"
      sha256 "a2904c13e473539724af3c06bb4b19be9eb024b85dfe335937cfca2eaa35783f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.6/bitrise-build-cache_3.19.6_linux_amd64.tar.gz"
      sha256 "38bd77390b7a871751ef06b756504681a066ae2f71414f23943dbd4dd835ebb8"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
