class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.5/bitrise-build-cache_3.6.5_darwin_arm64.tar.gz"
      sha256 "e852e651ee47b6c05a3997989932b833c3abb95e0a8d90a1331bc1c9738aedd4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.5/bitrise-build-cache_3.6.5_darwin_amd64.tar.gz"
      sha256 "f73ef19683f76ca0c59b1285bb241bfdeab5e66563b333b0d534432241e97dc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.5/bitrise-build-cache_3.6.5_linux_arm64.tar.gz"
      sha256 "ab238628cc9d46d992456325113aeb4b455a92904d2e651b585fdc1ad0ca6f25"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.5/bitrise-build-cache_3.6.5_linux_amd64.tar.gz"
      sha256 "142cf8073875836084ae93cce920390b3b314a4478dbe2d1d704c387cbfa36bc"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
