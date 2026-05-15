class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.0/bitrise-build-cache_2.7.0_darwin_arm64.tar.gz"
      sha256 "407c86c174aaedac40281cf96eaeff4df70b2bcd9f1d942aa2dc61c07ef29b60"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.0/bitrise-build-cache_2.7.0_darwin_amd64.tar.gz"
      sha256 "eaac09d1d9e43bde974ac949fef5c64d3d787fa260ac5598371a079717513b89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.0/bitrise-build-cache_2.7.0_linux_arm64.tar.gz"
      sha256 "b8d2aff577f48fd9bd15c77bf3f6ad355a6e05af2642418e53b9cde126f6413b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.0/bitrise-build-cache_2.7.0_linux_amd64.tar.gz"
      sha256 "006550a257494445d96e93750df01529ac334e4651cd4da2cf38d90601f5ba00"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
