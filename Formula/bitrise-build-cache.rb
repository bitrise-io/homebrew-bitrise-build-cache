class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.1/bitrise-build-cache_3.8.1_darwin_arm64.tar.gz"
      sha256 "6dfbff93360df3fd250adafccde44d667a4524e88c4fab3cd39b70ca0071b1ef"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.1/bitrise-build-cache_3.8.1_darwin_amd64.tar.gz"
      sha256 "10cb38974bb6f984d7fe443e5e9cd84b1c8676e7ba22901f053d2b0b096fc781"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.1/bitrise-build-cache_3.8.1_linux_arm64.tar.gz"
      sha256 "d005b1d170ca26e37bf018c65c8cc6966d583cf01b9357eb862b0026238a42e8"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.8.1/bitrise-build-cache_3.8.1_linux_amd64.tar.gz"
      sha256 "63d18a439216918724bb9f6bb2b9ba683f88f7010baab53cfc181678a2e81604"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
