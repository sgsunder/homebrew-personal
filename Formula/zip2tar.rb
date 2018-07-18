class Zip2tar < Formula
  desc "Python script to convert zip files to tar files"
  url "https://github.com/sgsunder/homebrew-personal.git"
  version "1.0.0"

  bottle :unneeded

  depends_on "python"

  def install
    bin.install "scripts/zip2tar.py" => "zip2tar"
  end
end
