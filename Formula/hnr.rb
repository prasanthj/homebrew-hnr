class Hnr < Formula
  desc "Terminal UI for Hacker News — browse feeds, read threaded comments, vote and reply"
  homepage "https://github.com/prasanthj/hnr"
  url "https://github.com/prasanthj/hnr/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c31d4596dd0961e00820a8ec5732f2a05674f23ccae1b750fe266c12dfed85f3"
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
