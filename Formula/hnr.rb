class Hnr < Formula
  desc "Terminal UI for Hacker News — browse feeds, read threaded comments, vote and reply"
  homepage "https://github.com/prasanthj/hnr"
  url "https://github.com/prasanthj/hnr/archive/refs/tags/v0.3.7.tar.gz"
  sha256 "21e3d86ff88a1e3b027c280232081e9726e560b72377735bb4f3bed09c33347c"
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
