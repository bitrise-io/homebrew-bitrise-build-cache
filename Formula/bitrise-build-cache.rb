class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.16.0/bitrise-build-cache_3.16.0_darwin_arm64.tar.gz"
      sha256 "d3126f3529f2e5f47b1ecf5b36c09cc9456b06b9e334ecbbee14b7ea9f0c5611"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.16.0/bitrise-build-cache_3.16.0_darwin_amd64.tar.gz"
      sha256 "0561e7f9ac968c66f8abc6a50e1aa5507e9b2af8bd628e4067b9dd7b34b67990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.16.0/bitrise-build-cache_3.16.0_linux_arm64.tar.gz"
      sha256 "6d83430d5b49dc5a807c17975523fbb30728b548f07153f6e6bcea7562f20648"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.16.0/bitrise-build-cache_3.16.0_linux_amd64.tar.gz"
      sha256 "154aa9a791f6afbd424818be7b3db5830d9bd787962cfbae7da1dafd634f1077"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
