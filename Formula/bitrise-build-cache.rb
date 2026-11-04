class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.2/bitrise-build-cache_3.19.2_darwin_arm64.tar.gz"
      sha256 "932991fadd056056805686c635f96a0688677d50476c0fa0cc29655176995b09"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.2/bitrise-build-cache_3.19.2_darwin_amd64.tar.gz"
      sha256 "f77a35a5e03aad5cbbbf11f168c6caad11e0e1fd7abd7799718eef77ffcf117c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.2/bitrise-build-cache_3.19.2_linux_arm64.tar.gz"
      sha256 "bf4e04f00949bd1f11c4b83cfd2cafc30972661e76393f5a98c7e52a38e09fb0"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.2/bitrise-build-cache_3.19.2_linux_amd64.tar.gz"
      sha256 "bc4e6b1de56ec390cdd1b811fb923496d0d1aecf0bcdd5bbf00fda29e2ef50c1"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
