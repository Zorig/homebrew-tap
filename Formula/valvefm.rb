class Valvefm < Formula
  desc "Terminal radio tuner with a vintage dial interface"
  homepage "https://github.com/zorig/valvefm"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-macos"
    sha256 "89b3f07a90bea8ee82bcc6ed5418e4632d487ea9fc79446b3effe1742bed42cf"
  end

  on_linux do
    url "https://github.com/zorig/valvefm/releases/download/v#{version}/valvefm-linux"
    sha256 "0008940edd469941e340a461e9e51e6a9208ce69db03911aba12e1111942d751"
  end

  def install
    binary = stable.url.end_with?("valvefm-macos") ? "valvefm-macos" : "valvefm-linux"
    bin.install binary => "valvefm"
  end

  test do
    assert_predicate bin/"valvefm", :executable?
  end
end
