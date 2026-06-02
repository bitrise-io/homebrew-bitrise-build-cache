class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.3/bitrise-build-cache_2.8.3_darwin_arm64.tar.gz"
      sha256 "43ad055eb7e0fd0e3e5840b325c268b1a4da09ef019f51578282260709e9666c"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.3/bitrise-build-cache_2.8.3_darwin_amd64.tar.gz"
      sha256 "31797e659135720a629f2acc521bd7a7ff1f7969e0c46c5e4a8cef8cbd4ea666"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.3/bitrise-build-cache_2.8.3_linux_arm64.tar.gz"
      sha256 "1949b8173f91dd4d517d5f7680602ffcf3ec96214c90402e692303826bf1a1a3"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.8.3/bitrise-build-cache_2.8.3_linux_amd64.tar.gz"
      sha256 "7f1c0bc131bdb7752916805a82dd605c2fc9c3f0c678bb25e856862ad9e4b397"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
