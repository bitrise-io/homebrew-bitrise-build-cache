class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.7/bitrise-build-cache_3.17.7_darwin_arm64.tar.gz"
      sha256 "0be11f855eb865f680ae1e63db303ac26a5fa9451bc86427b482f430a94561fb"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.7/bitrise-build-cache_3.17.7_darwin_amd64.tar.gz"
      sha256 "f743e3b17ace38ef27c2f45384300ea452aa7d516e96706d6dacbcac5c001c7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.7/bitrise-build-cache_3.17.7_linux_arm64.tar.gz"
      sha256 "d065e67dbf21c273c83d21b9d3c9b692b8cf243b230e1b0c9b3634d5f0cff849"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.7/bitrise-build-cache_3.17.7_linux_amd64.tar.gz"
      sha256 "0bdaf0555b9e52d084fb46bc2de356b06cd0e556bded2a6bfdd0b37ba8830617"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
