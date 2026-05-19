class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.3/bitrise-build-cache_2.7.3_darwin_arm64.tar.gz"
      sha256 "f0c7964626a3843c08f70207e86f841c8c7b3b1f6561d9c2b706e00eae94f2a4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.3/bitrise-build-cache_2.7.3_darwin_amd64.tar.gz"
      sha256 "833f4fe3ce6d86ca38dbbdc82a7b6d7b4b66ab5c610c2f1b397e056aae4074e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.3/bitrise-build-cache_2.7.3_linux_arm64.tar.gz"
      sha256 "5f9518d55816a999d91dd23c28135f98db63e1b16b3b9873fb415a24389035e0"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.3/bitrise-build-cache_2.7.3_linux_amd64.tar.gz"
      sha256 "b991b084c6ba43200a6e9532376ab23245cb307c2e57b2bec576a28d5df08b9f"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
