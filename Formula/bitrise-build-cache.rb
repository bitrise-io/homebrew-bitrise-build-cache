class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.14/bitrise-build-cache_2.8.14_darwin_arm64.tar.gz"
      sha256 "c41bbf1a2d505ffd786e8c9fd73861073e6689508aa6b9cedbc612f828cda822"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.14/bitrise-build-cache_2.8.14_darwin_amd64.tar.gz"
      sha256 "ae91a3754a091e4d5fa7611e70ffb8f8dcb326f3141bad1635a3c74990142819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.14/bitrise-build-cache_2.8.14_linux_arm64.tar.gz"
      sha256 "88c275af061eff0c6f596cda231d879a60d237e617dc41cd1f8ed72d0cf51211"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.14/bitrise-build-cache_2.8.14_linux_amd64.tar.gz"
      sha256 "cc0e033a60398f75827b6f0aafeff8e5c0ca33ba7ff87864d0c3ddecaa5dd0e7"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
