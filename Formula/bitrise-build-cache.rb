class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.0/bitrise-build-cache_3.20.0_darwin_arm64.tar.gz"
      sha256 "41dbb1416d16fb2c4419816bda303bb8a97f014882c99ae1a58509cd9ec6da7f"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.0/bitrise-build-cache_3.20.0_darwin_amd64.tar.gz"
      sha256 "fa9140a6151bae50b4fbe2750ca890daa8d7406230352cfda6d9d24e88e337b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.0/bitrise-build-cache_3.20.0_linux_arm64.tar.gz"
      sha256 "b6af8f18fc57f9cb5f3a27198da2e1572f518dbcc00eaba42c499110c5a95b5d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.20.0/bitrise-build-cache_3.20.0_linux_amd64.tar.gz"
      sha256 "a65fb8fccfb0caa92e62b4e1fa8fc2e1134e96db6c4f6731f57eb42c6a3cba6c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
