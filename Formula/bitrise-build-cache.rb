class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.0/bitrise-build-cache_3.13.0_darwin_arm64.tar.gz"
      sha256 "16ac0797850bfad3efe959f5ced9fd87d12462a42a1ede5e2f504c223693dd00"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.0/bitrise-build-cache_3.13.0_darwin_amd64.tar.gz"
      sha256 "26be4281082a54d92d6fbc0b6f9fd0602c552fbbdec154d650a797be582eceda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.0/bitrise-build-cache_3.13.0_linux_arm64.tar.gz"
      sha256 "84d2b30146678cd388a8b92f2d9845dee8b50663ef32e6a27f3df349957dba60"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.0/bitrise-build-cache_3.13.0_linux_amd64.tar.gz"
      sha256 "e26828134e60bff161f4afa54e1065aa894a2774aa5028a208fbbc878811e98d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
