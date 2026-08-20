class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-arm64"
      sha256 "cd93fcc7ac997574e758ece4e7fe11460f906f8cfc61c7f52a136a3b3e32a3cd"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-amd64"
      sha256 "d784656eb25d405755c7b2e502678e541598031ce882615ddce5ae3869a17ee9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-arm64"
      sha256 "cd3d14f98dc3a259dc138dc98db4963e202a03643943d72b31eafcbfd19f516b"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-amd64"
      sha256 "11c3a27bd882e8ca521b0607ed1629acaf986af4f9e43ed0ea3af4f9facb25a2"
    end
  end

  def install
    bin.install Dir["valvefm-*"].first => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
