class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.19.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.4/bitrise-build-cache_3.19.4_darwin_arm64.tar.gz"
      sha256 "d8736f258f3dfc3ec829c87027ec798c5237c3513472c14e416cebba3372ff13"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.4/bitrise-build-cache_3.19.4_darwin_amd64.tar.gz"
      sha256 "9fb1162502b9539411012c715b54f46e8fbea3fc6b2e6383b685eb42c568aa3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.4/bitrise-build-cache_3.19.4_linux_arm64.tar.gz"
      sha256 "0d6f6d0a3ece2d6dd37ffb082819a908beea563a6792f800f3a4b59e3bb551f5"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.19.4/bitrise-build-cache_3.19.4_linux_amd64.tar.gz"
      sha256 "4ad44f0598c68fdbbd96b1f162b95c77cf6bd5f4a9d40f40873c53b52cb1da08"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
