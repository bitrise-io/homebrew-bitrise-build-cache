class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.8/bitrise-build-cache_3.6.8_darwin_arm64.tar.gz"
      sha256 "f51571442cc79f7b12043476fb0f47871330c2067aca95b28e72b0328367f92a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.8/bitrise-build-cache_3.6.8_darwin_amd64.tar.gz"
      sha256 "02a83ca3abc739e54511385830a9122e9dad5657a5fbbc2b8b693785e6ccddaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.8/bitrise-build-cache_3.6.8_linux_arm64.tar.gz"
      sha256 "5707d8ee09430888142970b5b3af81bdc3be25498a2098fef05dd7fb60914a4a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.8/bitrise-build-cache_3.6.8_linux_amd64.tar.gz"
      sha256 "874e458f86752133825c6eb436582c7ec714bb873727bbbce5731428c9cb3544"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
