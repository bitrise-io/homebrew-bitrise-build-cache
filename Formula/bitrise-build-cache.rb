class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.15/bitrise-build-cache_2.8.15_darwin_arm64.tar.gz"
      sha256 "eae4665975d59a0d1ab2a295b99226df242a8d61549f01b6ce20710cbde67324"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.15/bitrise-build-cache_2.8.15_darwin_amd64.tar.gz"
      sha256 "c31018fcb5eae83eb89718b50bba3058c6c56576e06a89990065661c9871c2d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.15/bitrise-build-cache_2.8.15_linux_arm64.tar.gz"
      sha256 "715bb895c313fb940be45fde77d1cf226cbdb3415ecd9793d397bd55c54f9dcf"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.15/bitrise-build-cache_2.8.15_linux_amd64.tar.gz"
      sha256 "7fa859708e9fec1633adfdb0065a15f0be3d2070fd2925a786dbc170ed652ab4"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
