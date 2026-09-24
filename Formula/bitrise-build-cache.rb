class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.12.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.4/bitrise-build-cache_3.12.4_darwin_arm64.tar.gz"
      sha256 "aa65192a1be1b9fa286e392a820ce799946d8aded11ef27adbccd74ca86918b2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.4/bitrise-build-cache_3.12.4_darwin_amd64.tar.gz"
      sha256 "00b488db9fec02718d968db944a6f1324b9388de2d2c1cc79df0d0204349eb0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.4/bitrise-build-cache_3.12.4_linux_arm64.tar.gz"
      sha256 "4e3605d7efb581468a1ea639e8334866ae1137edf00564811dd8fc763cd4e9ff"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.12.4/bitrise-build-cache_3.12.4_linux_amd64.tar.gz"
      sha256 "d87fb28aef500bb384aba7a7b8faf30756c69fbeb6bfe51830d05bfcc7e8b803"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
