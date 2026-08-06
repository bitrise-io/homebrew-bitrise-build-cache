class BitriseBuildCache < Formula
  desc "Bitrise Build Cache CLI — configure remote build cache for Gradle, Bazel, Xcode, and React Native"
  homepage "https://bitrise.io"
  version "3.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.4/bitrise-build-cache_3.4.4_darwin_arm64.tar.gz"
      sha256 "9d14a9cfd0f89e3b7ae7788078d9e3404cec64a11da5a611146e6530cf325129"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.4/bitrise-build-cache_3.4.4_darwin_amd64.tar.gz"
      sha256 "7089e7efaca89bdaba8c7495d592cc93cf621dbb39bf38c3b0936ed92728b045"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.4/bitrise-build-cache_3.4.4_linux_arm64.tar.gz"
      sha256 "b4ae2afcf29b3d009f0e50e2a672ce5504a5b23de536651663b1a7f5d0275566"
    end
    on_intel do
      url "https://github.com/bitrise-io/bitrise-build-cache-cli/releases/download/v3.4.4/bitrise-build-cache_3.4.4_linux_amd64.tar.gz"
      sha256 "f176ecc032849321eed8ba6961750f947027e813193d4f871b52348bb0a7407d"
    end
  end

  def install
    bin.install "bitrise-build-cache"
  end

  test do
    system "#{bin}/bitrise-build-cache", "--help"
  end
end
