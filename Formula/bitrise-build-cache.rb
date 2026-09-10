class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.0/bitrise-build-cache_3.9.0_darwin_arm64.tar.gz"
      sha256 "1d5148b489e7eaaccb9ad368f325d2fc692907a81cfcc9ef4397b0ecc3f1007a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.0/bitrise-build-cache_3.9.0_darwin_amd64.tar.gz"
      sha256 "44d83d0dcc7351d1270f33ad29c09bb708129978d2d9a142b18820994701fbba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.0/bitrise-build-cache_3.9.0_linux_arm64.tar.gz"
      sha256 "fb45956acf05c08d9d1190b7ce316d489cb3cdc03a8a487409894eca858ccd84"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.9.0/bitrise-build-cache_3.9.0_linux_amd64.tar.gz"
      sha256 "2b3645979ae790958ea15cc62ce1cd9fc5fa924c04cf83fa35dbeabc8221ec1d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
