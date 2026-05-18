class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "2.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.2/bitrise-build-cache_2.7.2_darwin_arm64.tar.gz"
      sha256 "e022d465f10f3cfe500b25397cc301fc31d167750dbc9177bbb4d3e462727a9b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.2/bitrise-build-cache_2.7.2_darwin_amd64.tar.gz"
      sha256 "f1fe0f012c8f9d40eb522077f262adff900390957e52771466ed251077a5d665"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.2/bitrise-build-cache_2.7.2_linux_arm64.tar.gz"
      sha256 "4ac7be3764238912cc49d9f6585f604e419d63e25ac14deea14459d1c4e559f2"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v2.7.2/bitrise-build-cache_2.7.2_linux_amd64.tar.gz"
      sha256 "905d930745bb939ce518ff7c2adc4d8b80d6ac945b325b11e4c7ac583463a886"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
