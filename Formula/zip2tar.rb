class Zip2tar < Formula
  desc "Convert ZIP files to TAR files"
  homepage "https://unix.stackexchange.com/a/146274"
  url "https://gist.github.com/590f033e71e1b6f52569c38734974946.git"
  version "latest"

  def install
    bin.install "zip2tar.py" => "zip2tar"
  end
end
