class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.4/bitrise-build-cache_3.6.4_darwin_arm64.tar.gz"
      sha256 "556dce59f23c92592887d1a295e8f24301b73f03ed86edfb49e330e941ba2dfb"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.4/bitrise-build-cache_3.6.4_darwin_amd64.tar.gz"
      sha256 "5d42369b406705fbff104c2e330db7a6818f9ae7678089c471a344fde7afe866"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.4/bitrise-build-cache_3.6.4_linux_arm64.tar.gz"
      sha256 "46d87d14f521f31ca746d8474c4a003019f8a8fd47632ca01cb236a4763cf2b1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.4/bitrise-build-cache_3.6.4_linux_amd64.tar.gz"
      sha256 "654b03f7e7b9ad42ffbd2297bf317ac4bf407d35a8379d54b81a7627c239ffbe"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
