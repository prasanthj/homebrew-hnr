class Hnr < Formula
  desc "Terminal UI for Hacker News — browse feeds, read threaded comments, vote and reply"
  homepage "https://github.com/prasanthj/hnr"
  url "https://github.com/prasanthj/hnr/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "f2615ef10b75dca159ae7e4146aef9f5cf34c6abdf9c770186221ba371521b36"
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
