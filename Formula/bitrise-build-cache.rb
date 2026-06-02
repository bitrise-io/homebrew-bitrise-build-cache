class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.2/bitrise-build-cache_2.8.2_darwin_arm64.tar.gz"
      sha256 "63cb6b2ea412e3899ef98e56a621d0ea522ff6b9e6c6aaed83b2d5eb9a75cdb4"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.2/bitrise-build-cache_2.8.2_darwin_amd64.tar.gz"
      sha256 "98d7a2e00dfcbfa84b43e9e23f53c169a08b07915bd066d89163b34e47212826"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.2/bitrise-build-cache_2.8.2_linux_arm64.tar.gz"
      sha256 "09e367f07b9fc7d5c02f423b74549e406cc239c4a12655e12419f51666eb770c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.2/bitrise-build-cache_2.8.2_linux_amd64.tar.gz"
      sha256 "e142dccf7ad01db57452e52109e8b7f4640647f191e38e4ea76075c8b65fe568"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
