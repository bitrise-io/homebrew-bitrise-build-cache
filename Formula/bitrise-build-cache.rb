class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.0/bitrise-build-cache_3.8.0_darwin_arm64.tar.gz"
      sha256 "8486223d568bdf16c575bf8dcc230f5b7b02e8dd7d4efd70d8413e351f961fe8"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.0/bitrise-build-cache_3.8.0_darwin_amd64.tar.gz"
      sha256 "235b6e05c83cd3956c32017493fffb028e5dd8191111e5181e1aae782b8bafca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.0/bitrise-build-cache_3.8.0_linux_arm64.tar.gz"
      sha256 "4509afcfff691d440fd9f4222f33c6148e40f766291450a57e2c4c048913e773"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.0/bitrise-build-cache_3.8.0_linux_amd64.tar.gz"
      sha256 "a2659d8c726fc15b6d91a37096472ee615546aabf6ff7a85eb21eaba1908f5f0"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
