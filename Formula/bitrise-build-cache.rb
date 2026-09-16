class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.2/bitrise-build-cache_3.9.2_darwin_arm64.tar.gz"
      sha256 "f4195185cb200ce306e5c8717f6cfd52f4f407c6ef68227e35cc3373f28a3952"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.2/bitrise-build-cache_3.9.2_darwin_amd64.tar.gz"
      sha256 "13fc6cd461cd07694a3de818e19aeb7cb8962b21c92c5a146a6cff355c13d6bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.2/bitrise-build-cache_3.9.2_linux_arm64.tar.gz"
      sha256 "8becb0e43e895adca592157e083dfb09f1e59d8bf68cf640fd569f4c8f9078c2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.2/bitrise-build-cache_3.9.2_linux_amd64.tar.gz"
      sha256 "cc1f57c554b67dfecb25c3e519bf383b56298331f9333515d15d3b434ca33b67"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
