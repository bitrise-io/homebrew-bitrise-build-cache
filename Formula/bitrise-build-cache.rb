class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.1/bitrise-build-cache_3.12.1_darwin_arm64.tar.gz"
      sha256 "76d8db6373344e312276420fc7f07fefa7099edc5f742caf345845de32e03d4e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.1/bitrise-build-cache_3.12.1_darwin_amd64.tar.gz"
      sha256 "5a9d92b472b5763d1def22489159725928c3a13b7a03ba07afde0cd12901b2de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.1/bitrise-build-cache_3.12.1_linux_arm64.tar.gz"
      sha256 "937c137da6a2f87e28bd533a0eac4f78d14b79b98cadb9941426f121a9c036f7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.1/bitrise-build-cache_3.12.1_linux_amd64.tar.gz"
      sha256 "62a602f8505b4a10f46f51f5ef29faccebee25ff9a48413699b065f3738a15b2"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
