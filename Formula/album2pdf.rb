class Album2pdf < Formula
  desc "Converts Image albums to PDFs"
  homepage "https://gist.github.com/sgsunder/7451c534bd5bd7df3f57e302612fb927"
  url "https://gist.github.com/7451c534bd5bd7df3f57e302612fb927.git"
  version "latest"

  def install
    bin.install "album2pdf.sh" => "album2pdf"
  end
end
