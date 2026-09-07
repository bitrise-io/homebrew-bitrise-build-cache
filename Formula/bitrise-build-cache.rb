class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.2/bitrise-build-cache_3.8.2_darwin_arm64.tar.gz"
      sha256 "9ac4cbf2e19123e9d8b61ccf0bc76e319fc0170e4fd864850ba40d5a13d588b1"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.2/bitrise-build-cache_3.8.2_darwin_amd64.tar.gz"
      sha256 "938559322cf31a0bdcae8f958dfc82d5fcf3a412dde273f60ab24a48d24a4844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.2/bitrise-build-cache_3.8.2_linux_arm64.tar.gz"
      sha256 "12faaedaf64ae3c57363dad97d6c5e97eed1be6109ef4e9eea6752ffcb1dcba7"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.2/bitrise-build-cache_3.8.2_linux_amd64.tar.gz"
      sha256 "27669aa807bd62c9ad181650e9cc2d509fea987dfdc90dd7536ff0916b633dce"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
