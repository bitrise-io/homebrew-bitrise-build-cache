class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.5/bitrise-build-cache_2.7.5_darwin_arm64.tar.gz"
      sha256 "de6ddc01f86c838eb182d898a70c37a02e12e82aa0dea1f74d6963157761a4c9"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.5/bitrise-build-cache_2.7.5_darwin_amd64.tar.gz"
      sha256 "50fd72c6dafc1a75b466232a9eb719c6118aa363db6c7623cdd8b6511cf3d0af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.5/bitrise-build-cache_2.7.5_linux_arm64.tar.gz"
      sha256 "e5dd427399a3cad7a05321782b69c1831e0844c44da3b9fd69bcbd78fbb0f0a1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.5/bitrise-build-cache_2.7.5_linux_amd64.tar.gz"
      sha256 "96b6af0843621533d3e13ab31797d383b3da702863641abbd1393e6b4878adb5"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
