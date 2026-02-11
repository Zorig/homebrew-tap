class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.5-rc1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-arm64"
      sha256 "b5535f907229a8a57468ea8fdb52f5a3bd2449a17fbb16cad3b61d6c4a88008e"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-amd64"
      sha256 "403e1648f260ac5b54fbee22fbf1313619f21d81ab99a4ce2946a5fa57c961ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-arm64"
      sha256 "f871f9d881fbdabee1fc5305a6d03d6e177a634ed4eea25ee2b26bb976084275"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-amd64"
      sha256 "f66e068288f90f4a4d41493a1753831e434448db07f04274d992c1258c1d70cc"
    end
  end

  def install
    bin.install Dir["valvefm-*"].first => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
