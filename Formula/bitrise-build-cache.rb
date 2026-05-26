class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.0/bitrise-build-cache_2.8.0_darwin_arm64.tar.gz"
      sha256 "ffa8dc6790f3153d0faa024c88126b583f1d1dd6be453cbfde747e49cd656482"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.0/bitrise-build-cache_2.8.0_darwin_amd64.tar.gz"
      sha256 "d354def6cdb55672b1ccfc184b22d2b3567cce78e9a0b470fba50062d87143be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.0/bitrise-build-cache_2.8.0_linux_arm64.tar.gz"
      sha256 "c17bb253646261c8d4ae572880c6c88db4b92b6c56a145982105f73b1c73207d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.0/bitrise-build-cache_2.8.0_linux_amd64.tar.gz"
      sha256 "570ba9a4dbb9196dd1894c5b4b970a520eabead8236e886ed7fad4388843b4a9"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
