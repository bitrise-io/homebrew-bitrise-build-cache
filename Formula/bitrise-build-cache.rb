class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.7/bitrise-build-cache_3.6.7_darwin_arm64.tar.gz"
      sha256 "64491df56a7765ba667bd73bafbbbcef9ffac1ebcbf064dcd575649ed2c3c26a"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.7/bitrise-build-cache_3.6.7_darwin_amd64.tar.gz"
      sha256 "e95a522217d2ae3e417b75d13c12bd84a43e95fd6ee3e1d4909a71330fa8059b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.7/bitrise-build-cache_3.6.7_linux_arm64.tar.gz"
      sha256 "7ba0840d76fa4c3cc61ca7a5ea3094416d58d292ddc0f41ef070588e0c095cf2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.7/bitrise-build-cache_3.6.7_linux_amd64.tar.gz"
      sha256 "8cc359acdd14dfdcf51ec6e2359d3f3d548db17ef5c2894700885a8318174a1c"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
