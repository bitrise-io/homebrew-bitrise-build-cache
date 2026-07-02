class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.16/bitrise-build-cache_2.8.16_darwin_arm64.tar.gz"
      sha256 "e490167e3582576d7bf0e81c128f0740883b4ebd6657b20039744379356a7adf"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.16/bitrise-build-cache_2.8.16_darwin_amd64.tar.gz"
      sha256 "300fac271c7eb8d66c1e398cc7d7a75c8e347233c4e696fe91294bc2d39d27ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.16/bitrise-build-cache_2.8.16_linux_arm64.tar.gz"
      sha256 "70a2c5a7e312689ec799ad1afc471b8adabb3f0ed2b2465d0215b35a2a96c1ef"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.16/bitrise-build-cache_2.8.16_linux_amd64.tar.gz"
      sha256 "8fff1d7a22cade3ce4afb829b7ba967203e31106d6534f5fc9b69a1bd94fba25"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
