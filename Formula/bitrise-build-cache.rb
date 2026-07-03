class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_arm64.tar.gz"
      sha256 "20584f7dd72197a7ee2e2cfe8e590aa98c1d8f8f8d29eeff31da1c1b7527c565"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_darwin_amd64.tar.gz"
      sha256 "a6908a8c512b0e1fed026213ee7433d98ef491c83728db76dd1dc61a60dcbd09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_arm64.tar.gz"
      sha256 "130a7917a5b61f3edd85ebda8865b8ec3903b937e748f68fb9b428977aa2f09a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.0.0/bitrise-build-cache_3.0.0_linux_amd64.tar.gz"
      sha256 "e013e8f987849e50f281bde3ce8a1c4706c6380804a49f1d9e881023612fd9b3"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
