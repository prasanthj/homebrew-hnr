class Hnr < Formula
  desc "Terminal UI for Hacker News — browse feeds, read threaded comments, vote and reply"
  homepage "https://github.com/prasanthj/hnr"
  url "https://github.com/prasanthj/hnr/archive/refs/tags/v0.3.5.tar.gz"
  sha256 "ee2f6f65f0c78096046f93472400a34d1025ef2456ac64e7d7eaf0e20ad9523f"
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
