class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.1/bitrise-build-cache_3.19.1_darwin_arm64.tar.gz"
      sha256 "c2fd38a7fe4dd4efc4482e6d6dbb1658693736dfacfd211aa722d5c1a6a0c010"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.1/bitrise-build-cache_3.19.1_darwin_amd64.tar.gz"
      sha256 "1ccb0fa9e73245c2eb85af856036de4b528a3c8b7a3ecdc64b497dbfe1d47374"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.1/bitrise-build-cache_3.19.1_linux_arm64.tar.gz"
      sha256 "67e375d6293823834c2f046a6778a111d3c8dce7aead8667994ee523c3de0796"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.1/bitrise-build-cache_3.19.1_linux_amd64.tar.gz"
      sha256 "adfe5e6c7b1b11a2ddeb0763f0432cab090f46435a9c449e875ce4400bbd94cb"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
