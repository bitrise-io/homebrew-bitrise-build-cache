class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.0/bitrise-build-cache_3.19.0_darwin_arm64.tar.gz"
      sha256 "5a3e41b4c8da90c6f41c01c936e4bdbcf3628389b474358aa2f5c63bd7ca2637"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.0/bitrise-build-cache_3.19.0_darwin_amd64.tar.gz"
      sha256 "22377af537a245c4198a39b7aa57ed83a57878fee3d2ab9c3f856b2b8ed27086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.0/bitrise-build-cache_3.19.0_linux_arm64.tar.gz"
      sha256 "66d89bbf7c40d7281f444527f52fa0ee450ff6cae6e798269fa3d2ebdab3f7d5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.0/bitrise-build-cache_3.19.0_linux_amd64.tar.gz"
      sha256 "6a7aff1610b2c02224bf64e4eb9956c4f95e77fffdd02a36868ff935bb0a62d5"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
