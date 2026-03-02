class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-arm64"
      sha256 "fd280343767b1d7cf863a442745088f089fd5b9ce51cf8da6d3ae68ff6f11242"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-amd64"
      sha256 "def4b3472a1688626e051efd2a740177c1cdf6f98baa6aa13a940853f75e74e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-arm64"
      sha256 "2f340565bd7c93f25676563bbe98526c312953b7582ff6c6cca172c0b7d0627c"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-amd64"
      sha256 "3e40aa50f42c77ae3cb07adbf243dac4ccd9d1a4e7dea8353572514ccd45dd7b"
    end
  end

  def install
    bin.install Dir["valvefm-*"].first => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
