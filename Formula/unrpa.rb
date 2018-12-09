class Unrpa < Formula
  desc "A program to extract files from the RPA archive format."
  homepage "http://www.lattyware.co.uk/projects/unrpa/"
  url "https://github.com/Lattyware/unrpa/archive/1.6.tar.gz"
  version "1.6"
  sha256 "3d9669f54edbe4f3020075d8cfe5672e6e72f8df79898a1e0aaecee1e4caa9a6"

  depends_on "python"

  def install
    bin.install "unrpa" => "unrpa"
  end

  test do
    system "unrpa", "--help"
  end
end
