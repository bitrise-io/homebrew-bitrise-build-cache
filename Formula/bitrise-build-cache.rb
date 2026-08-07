class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.5/bitrise-build-cache_3.4.5_darwin_arm64.tar.gz"
      sha256 "f4b9ac335e23c6bb62cf801dc511ebf22b6255f852c3e4065b1155a999a3236a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.5/bitrise-build-cache_3.4.5_darwin_amd64.tar.gz"
      sha256 "d554733e744f3a10c47d945377834aece3c031d8c0b1af4e7c20f787d02220fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.5/bitrise-build-cache_3.4.5_linux_arm64.tar.gz"
      sha256 "dff7cd7db6c11809af0388fc82e7bc5071d5144a7cbc149385b1c0c3cdffa3a7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.5/bitrise-build-cache_3.4.5_linux_amd64.tar.gz"
      sha256 "6a7b2068de9028ee5c3426f81e46d89aa339c6ea7394b81ef88cbb66931f9d5d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
