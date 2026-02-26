class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-arm64"
      sha256 "1dce69c54a0f7086ca918a592854c15b4fe10c198ea267a8d7e662a78d659af6"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos-amd64"
      sha256 "f22a84080c1be01f3919e53367e4a51ebeac8fdbb82929415602a5be33710811"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-arm64"
      sha256 "a04411246099672de48693d8de0588bd0906163d2eaa3dd52913022a6aa57bc1"
    end
    on_intel do
      url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux-amd64"
      sha256 "96c5e8e888180fb775a5cd7f5e330e2a0e3919a33e2245976c489611667eeb79"
    end
  end

  def install
    bin.install Dir["valvefm-*"].first => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
