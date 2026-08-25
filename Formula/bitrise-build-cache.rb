class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.2/bitrise-build-cache_3.6.2_darwin_arm64.tar.gz"
      sha256 "17898081d7e6ea64b0393c50482cb00d84b6aa459e9954b1f26f0d64b4bf510e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.2/bitrise-build-cache_3.6.2_darwin_amd64.tar.gz"
      sha256 "dc468d683f15ce69a159e783ca8020cca73e2c4136080a44224bafb888261f8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.2/bitrise-build-cache_3.6.2_linux_arm64.tar.gz"
      sha256 "a22ff26e82adeaf46f9d87287392b1caa0a2e86954a44a479adaa5a8e54cd76d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.2/bitrise-build-cache_3.6.2_linux_amd64.tar.gz"
      sha256 "f5568b0c12a830bfdbe26acc0c1a345346263b193ac4033dfd9715c9b9596b34"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
