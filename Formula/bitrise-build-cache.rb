class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.2/bitrise-build-cache_3.1.2_darwin_arm64.tar.gz"
      sha256 "2ac8abd0474471b6b088dfaea5fc42615200d968ebb2cba192943459bda2df3c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.2/bitrise-build-cache_3.1.2_darwin_amd64.tar.gz"
      sha256 "a8d49c10e9bf2e8d40f5086e7a5a2f9e2e414e82946de26d43f0ad836dc0af20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.2/bitrise-build-cache_3.1.2_linux_arm64.tar.gz"
      sha256 "13a8c8ccae30ff721f26e105a377f6308e8440a204af0111d4f99bf4b2e0036b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.2/bitrise-build-cache_3.1.2_linux_amd64.tar.gz"
      sha256 "b4e7e2875a8e3af32091ce17938fd234dba1bf4643d3758ae3ec1a9de4e86cd9"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
