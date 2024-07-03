class Fictionary < Formula
  desc "Generate made-up words following the patterns used by real English words."
  homepage "https://github.com/judy2k/fictionary-rs"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/judy2k/fictionary-rs/releases/download/0.1.2/fictionary-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "213a26e962ed246ebb66e9c33ec6b9d4c7b60f9373f7c28438634052f4fee2e7"
    end
    if Hardware::CPU.intel?
      url "https://github.com/judy2k/fictionary-rs/releases/download/0.1.2/fictionary-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "69bc3581d4c5f35d8afab8f0b4dc34a21582d59443549b83fb42ad11823de3b9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/judy2k/fictionary-rs/releases/download/0.1.2/fictionary-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "479cc7630a5f8dd86f55d4b1ff05a7fe3c353f090757acbcc5bec704d7745482"

    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/judy2k/fictionary-rs/releases/download/0.1.2/fictionary-0.1.2-armv7-unknown-linux-gnueabihf.tar.gz"
      sha256 "22405c8a095741de56845991cfb6207dde0df648bd2a1acb39b5f2667ecddf4e"

    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/judy2k/fictionary-rs/releases/download/0.1.2/fictionary-0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03d0c0f9dc8bc4f983b3398f7c45604a716e469fdbc988f55c2562fd4342718b"

    end
  end

  def install
    bin.install "fictionary"
  end

  test do
    system "#{bin}/fictionary"
  end
end
