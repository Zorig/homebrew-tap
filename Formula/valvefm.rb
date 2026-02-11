class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-arm64"
      sha256 "94c8d302ece51353e574e8887e1d1c1c3a892a7f96e13f782b24233a22b21241"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-amd64"
      sha256 "a80a990ef7bd15338ffc8914f7d19ae5e2f8c9c69c1034cefe8c314d50478901"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-arm64"
      sha256 "a801605d6614417dc0d577532028bf4faa6fbaac65f83b413360cc67d5ba484d"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-amd64"
      sha256 "6aa8b7b1095d3f332e9c0b0f63d511012b5f2ba9c85c3b2a05046369b44d174e"
    end
  end

  def install
    bin.install Dir["valvefm-*"].first => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
