class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4/bitrise-build-cache_2.7.4_darwin_arm64.tar.gz"
      sha256 "156c505e4ed24719eb1eb07afe165870de8358b5e0dee78b53878585acbe0d10"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4/bitrise-build-cache_2.7.4_darwin_amd64.tar.gz"
      sha256 "27122f73ae4cc51f7ef1cddb862076fecf73fab423d34664e3c88765ad65a75c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4/bitrise-build-cache_2.7.4_linux_arm64.tar.gz"
      sha256 "3434bad916f4ae4cc0d33bec7ad564e111833de88e21fb60af25dbba78d5f786"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.4/bitrise-build-cache_2.7.4_linux_amd64.tar.gz"
      sha256 "5f13400de166ea19d40fe658246c1558e033fca17f006d63ba63b87e3b1321b9"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
