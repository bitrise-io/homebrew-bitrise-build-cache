class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.0/bitrise-build-cache_3.6.0_darwin_arm64.tar.gz"
      sha256 "b69392a8c33da2f65b2b1cae8d21d8cbe6021553e510b286fc83ac7964fed7b1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.0/bitrise-build-cache_3.6.0_darwin_amd64.tar.gz"
      sha256 "2e84cdde590d1cf1588151656652e9c958937948907d8248c14f1fa27a8d8ef6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.0/bitrise-build-cache_3.6.0_linux_arm64.tar.gz"
      sha256 "f9dd3fee4cfcf1e1b1d09f269f1384f3e0c5b5d5eed55a6eec2b0ebb9d2488ba"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.0/bitrise-build-cache_3.6.0_linux_amd64.tar.gz"
      sha256 "c01b5b3ba49a7e0a1fc96a2bb84c89b271662eb6f655dd077304c39222139d10"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
