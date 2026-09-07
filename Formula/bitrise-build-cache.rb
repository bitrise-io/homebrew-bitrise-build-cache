class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.3/bitrise-build-cache_3.8.3_darwin_arm64.tar.gz"
      sha256 "43857bcfbd7bc8e8612164e9cd89ab995c964f21fa83af7baf60cb5feea2429b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.3/bitrise-build-cache_3.8.3_darwin_amd64.tar.gz"
      sha256 "257d9d028e17cf03528874da623c7c5138594fd48d1b746a2de5fb5f2d5cdb94"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.3/bitrise-build-cache_3.8.3_linux_arm64.tar.gz"
      sha256 "cd9804a811e2f3c53b0c842492cc88832cb1d13a6e0d00b5d9953c8a28e7f4c2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.3/bitrise-build-cache_3.8.3_linux_amd64.tar.gz"
      sha256 "414c7b96a5d2b33935874d618fafd555e32a347bbc691a1bb4594c974f766d0c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
