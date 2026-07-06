class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.2/bitrise-build-cache_3.0.2_darwin_arm64.tar.gz"
      sha256 "502710a40c8d461aef03fda492e68a466491fb2bb04b79aef079c7b6aa40e1b1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.2/bitrise-build-cache_3.0.2_darwin_amd64.tar.gz"
      sha256 "431b54a3b44556134c239515854ce482222189c0c810ff9d4b04fb5ea3c067fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.2/bitrise-build-cache_3.0.2_linux_arm64.tar.gz"
      sha256 "aae28ca3d3c645e02fa9c0d3da48fb91a861519f4850f41d72ab237e762bb211"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.2/bitrise-build-cache_3.0.2_linux_amd64.tar.gz"
      sha256 "f3842849dc2e5f1b6e34d273d833f82f2ec7bea9d25045503b0a5b685d147413"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
