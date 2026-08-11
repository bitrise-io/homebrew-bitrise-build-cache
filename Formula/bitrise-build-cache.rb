class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.1/bitrise-build-cache_3.5.1_darwin_arm64.tar.gz"
      sha256 "2973c09c2a63929398010c46e95278195fbbf09f7a2cc06ea9085202a4338b9d"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.1/bitrise-build-cache_3.5.1_darwin_amd64.tar.gz"
      sha256 "7bbc189e6f3528c24e79750e0f65d238daa0032576dd6aee9e02d5195b495fda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.1/bitrise-build-cache_3.5.1_linux_arm64.tar.gz"
      sha256 "fea612a3e752ba4d091ebe82bf577ee88005bb9995134c984e966ee80ca24f1b"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.5.1/bitrise-build-cache_3.5.1_linux_amd64.tar.gz"
      sha256 "0c034a80aa17802c85beddf041d49c522cb35a69b9895bfd7e8114d39d647aac"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
