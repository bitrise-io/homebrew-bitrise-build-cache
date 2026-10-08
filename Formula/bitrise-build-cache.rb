class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.3/bitrise-build-cache_3.17.3_darwin_arm64.tar.gz"
      sha256 "a14d3feb204d52c29dd823b3f9d1d3f755230bef18b368b2a2865ec0d9cc0eb2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.3/bitrise-build-cache_3.17.3_darwin_amd64.tar.gz"
      sha256 "03ad11a6c8b2992b3793978cb466303fbe524af2c0ab4ed1c18238b79287e6e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.3/bitrise-build-cache_3.17.3_linux_arm64.tar.gz"
      sha256 "b4cb90ff7c7a35c3a67db82aa12ecbad8f5950a58d859a04f6b163f41786bb92"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.3/bitrise-build-cache_3.17.3_linux_amd64.tar.gz"
      sha256 "6117dd1a3aa9e2e418262bd001b47cf6f7da210d5d0cc66f206b8d36b95e4064"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
