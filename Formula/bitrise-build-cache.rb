class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.7.0/bitrise-build-cache_3.7.0_darwin_arm64.tar.gz"
      sha256 "78f0e5c7113120f0eab376c38f18d18549b2ead65159b1e3d707b25472ca073c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.7.0/bitrise-build-cache_3.7.0_darwin_amd64.tar.gz"
      sha256 "0e88718175854b465692b6fc246aadf9586a86b72b1ecde13e5ff4526de07485"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.7.0/bitrise-build-cache_3.7.0_linux_arm64.tar.gz"
      sha256 "8dca6f100b59bcabe074a57325494841055e57023127c2a7a2d65de2176eaa02"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.7.0/bitrise-build-cache_3.7.0_linux_amd64.tar.gz"
      sha256 "c0431b9f3368a4a3654303a10817e400b99b04461c3ebdc410ca8f1336119897"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
