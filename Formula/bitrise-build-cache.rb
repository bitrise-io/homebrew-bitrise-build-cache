class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.1/bitrise-build-cache_3.1.1_darwin_arm64.tar.gz"
      sha256 "0ba612a98a5aa8fd5b762743124d4c17776ae83cd3b47c259e31bad40a263c57"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.1/bitrise-build-cache_3.1.1_darwin_amd64.tar.gz"
      sha256 "5d5c84f759f110a3694cce2688bcdb76f6dd39bda4cf83f72a9ef898706bd608"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.1/bitrise-build-cache_3.1.1_linux_arm64.tar.gz"
      sha256 "ba1fd8bd70a2d04819e78a9c7aceea61aef18b00232e1423efdbfa86ac57dc13"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.1.1/bitrise-build-cache_3.1.1_linux_amd64.tar.gz"
      sha256 "e083ca357588ecad3058139944a4c3de1bb96d9ac517f7d41c329f9971a625a2"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
