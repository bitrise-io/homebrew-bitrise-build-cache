class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.2/bitrise-build-cache_3.5.2_darwin_arm64.tar.gz"
      sha256 "112e5a26e56a2f83d44952d0c9881592a160c165d7d593657f67e692f5fe6899"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.2/bitrise-build-cache_3.5.2_darwin_amd64.tar.gz"
      sha256 "40b9e2be7c31365c2c855ce8dc49f6976aa176c1ca214b88b677de9b1246fce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.2/bitrise-build-cache_3.5.2_linux_arm64.tar.gz"
      sha256 "0b7ae995d25f424814f873e83b23d7339f7a1c3036c1c46d152b6e8616a51209"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.2/bitrise-build-cache_3.5.2_linux_amd64.tar.gz"
      sha256 "ca52e97091f544c8bccd1719eb866bfb473602bce2fdb69a9648cbd6ab99f258"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
