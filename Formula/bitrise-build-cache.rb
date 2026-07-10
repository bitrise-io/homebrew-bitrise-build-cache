class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.0/bitrise-build-cache_3.1.0_darwin_arm64.tar.gz"
      sha256 "cf4f3d538dc1225a038282db1cb5dc003f9bd94aa1f76e46dad818ab71bc00f9"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.0/bitrise-build-cache_3.1.0_darwin_amd64.tar.gz"
      sha256 "6286c367180fe61921c420d6df917987aeea7cdff098d4e4637eac5be29e1dc8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.0/bitrise-build-cache_3.1.0_linux_arm64.tar.gz"
      sha256 "11d5fc6caf83b3e179fc8b599e626c7b6508b8e9e6366b86f919ae3e2d3e402e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.0/bitrise-build-cache_3.1.0_linux_amd64.tar.gz"
      sha256 "d5dc0e006507bda68821e42692c3cae049bcfbd54402101ce192486c1e3bb7ee"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
