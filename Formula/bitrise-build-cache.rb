class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.6.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.6/bitrise-build-cache_3.6.6_darwin_arm64.tar.gz"
      sha256 "05bc10cbdf67730e50de52842a3f56e4806781e7a0f33b1474befb58262d1863"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.6/bitrise-build-cache_3.6.6_darwin_amd64.tar.gz"
      sha256 "aee19b34d1fa521f08a083e0799457aeaf14afcbe0d1e5f4cd0041e7bb8fb264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.6/bitrise-build-cache_3.6.6_linux_arm64.tar.gz"
      sha256 "b107154277ecce880fe1e19b60f98eec171dc3dc996a5bab643f79ec5b1655ba"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.6.6/bitrise-build-cache_3.6.6_linux_amd64.tar.gz"
      sha256 "04bac2a06e22bb4f605dc701b5d7879b97b2f1626694530545d419058ace575a"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
