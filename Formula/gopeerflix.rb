class Gopeerflix < Formula
  desc "Torrent streaming CLI for VLC and IINA"
  homepage "https://github.com/zorig/gopeerflix"
  version "1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/gopeerflix/releases/download/v#{version}/gopeerflix-macos-arm64"
      sha256 "3365e73a169493859bd801e1f08542cccb79918f072d15372e079515e43374ce"
    end
    on_intel do
      url "https://github.com/zorig/gopeerflix/releases/download/v#{version}/gopeerflix-macos-amd64"
      sha256 "76367078d3a454fa341cf56ef6a6620ba8c4da3a10ff9424ff62a99bf76bfd0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/gopeerflix/releases/download/v#{version}/gopeerflix-linux-arm64"
      sha256 "a60ca0d61cf7f32db03ea79ab4248d4765a06a4e90b64a88d5f66729042f5739"
    end
    on_intel do
      url "https://github.com/zorig/gopeerflix/releases/download/v#{version}/gopeerflix-linux-amd64"
      sha256 "6a52230b96634d9ce3a1c352f1eeea82bc000fee4e236e42f0c14a0ed9ef90b0"
    end
  end

  def install
    bin.install Dir["gopeerflix-*"].first => "gopeerflix"
  end

  test do
    assert_predicate bin/"gopeerflix", :executable?
  end
end