class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.2/bitrise-build-cache_3.2.2_darwin_arm64.tar.gz"
      sha256 "e726671e0595a7a92099393450388026d1d08b88d2b2f33eb0b123fde9da7613"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.2/bitrise-build-cache_3.2.2_darwin_amd64.tar.gz"
      sha256 "5fa16d7946c3bd26c5169fc798f64fe71fc69f3e554a8654a11ad1b25b3ec7d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.2/bitrise-build-cache_3.2.2_linux_arm64.tar.gz"
      sha256 "8f452761ea53acd2c5166f63e08561f6262185365cbffde8d61512c195b165c8"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.2.2/bitrise-build-cache_3.2.2_linux_amd64.tar.gz"
      sha256 "aa3cac2696a82d9f739e8691df955575c94da85072b2fd5893247dd3b4da88ac"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
