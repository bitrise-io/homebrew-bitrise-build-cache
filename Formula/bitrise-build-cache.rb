class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.6/bitrise-build-cache_2.6.6_darwin_arm64.tar.gz"
      sha256 "eadfe510a249038e9fe0c52199ed0fbeef031514fd31bf354818fdffbab686a1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.6/bitrise-build-cache_2.6.6_darwin_amd64.tar.gz"
      sha256 "1cf6fdac7abf89a1eeb5e1b743a97566f21a7f4cc95726b08c1d404a7c0745d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.6/bitrise-build-cache_2.6.6_linux_arm64.tar.gz"
      sha256 "a2647cff8975ccd1b1a2fe01ab9ac4719cd47f0c76635cf7a2c2a6d0ced80d3c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.6.6/bitrise-build-cache_2.6.6_linux_amd64.tar.gz"
      sha256 "bc2d728cb04a04111b83bdbb6b7273c4aa632d41d17107776445b110ab09ed36"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
