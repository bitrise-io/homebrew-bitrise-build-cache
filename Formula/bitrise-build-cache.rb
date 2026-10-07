class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.1/bitrise-build-cache_3.17.1_darwin_arm64.tar.gz"
      sha256 "9316b33a021d8fabe8aa7e0a3781300b26e70847ea08eda75d30af4d639f0c9a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.1/bitrise-build-cache_3.17.1_darwin_amd64.tar.gz"
      sha256 "dc199a15bd1678f1a8db1dd6cc4034caeaf135945f230a3d7a96c9a22665b156"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.1/bitrise-build-cache_3.17.1_linux_arm64.tar.gz"
      sha256 "eb34b412e2f9cadf86379a232ba9bdbd5575161e97e5eed834cd485f9f0f3439"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.17.1/bitrise-build-cache_3.17.1_linux_amd64.tar.gz"
      sha256 "2aec603f0dddd25752524b9792215197553fc0dde8911070233803b9886eae6a"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
