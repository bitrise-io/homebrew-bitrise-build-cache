class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.1/bitrise-build-cache_3.13.1_darwin_arm64.tar.gz"
      sha256 "fbfb89a4ac862c7261362025f7cdf95eff61c1c8316efc674bd94e33a36c3018"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.1/bitrise-build-cache_3.13.1_darwin_amd64.tar.gz"
      sha256 "8c28a3c6c78d78268cf92590fcb3549cf304dd3a078ea6bd35fb65473b8b4b3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.1/bitrise-build-cache_3.13.1_linux_arm64.tar.gz"
      sha256 "93ff66e9bfb378e6e546c4448c594ddc586851ad07bb7cc9d17ff9423d4d546e"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.13.1/bitrise-build-cache_3.13.1_linux_amd64.tar.gz"
      sha256 "347b14d8836d8a09dac3eaa5e1255d968ecb0068d0897189a2948fb1f15fa6e7"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
