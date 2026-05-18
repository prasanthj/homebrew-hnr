class Hnr < Formula
  desc "Terminal UI for Hacker News — browse feeds, read threaded comments, vote and reply"
  homepage "https://github.com/prasanthj/hnr"
  url "https://github.com/prasanthj/hnr/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "143ef2d3ef366367de0615f63047f4400ca0c778a51f9e603b258a41a45b9fe6"
  license "MIT"
  head "https://github.com/prasanthj/hnr.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "hnr #{version}", shell_output("#{bin}/hnr --version")
  end
end
