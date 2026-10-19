class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.5/bitrise-build-cache_3.17.5_darwin_arm64.tar.gz"
      sha256 "f39af9c199deda2a922642d739d7f3dab13a14cdf51532e8f690ffdf3830f9fe"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.5/bitrise-build-cache_3.17.5_darwin_amd64.tar.gz"
      sha256 "1ab58d6c65ad44c51ecf96b4586fdcc7ee5538a8535fd3f27c03cbafea64bd8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.5/bitrise-build-cache_3.17.5_linux_arm64.tar.gz"
      sha256 "ac1328bf180e7417300d97911f81c793c9aa1a3eab27a38bda7a521ae372929f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.5/bitrise-build-cache_3.17.5_linux_amd64.tar.gz"
      sha256 "97b0c75661a819393f6f795af54f457e79983ed111a67ed254174700511ff5ea"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
