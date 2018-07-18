class PersonalScripts < Formula
  desc "Install all scripts from the personal script directory"
  url "https://github.com/sgsunder/homebrew-personal.git"
  version "0.0.1"

  bottle :unneeded

  depends_on "python"

  def install
    bin.install "scripts/zip2tar.py" => "zip2tar"
    bin.install "scripts/video2gif.sh" => "video2gif"
    bin.install "scripts/album2pdf.sh" => "album2pdf"
    bin.install "scripts/pushbullet-notify.sh" => "pushbullet-notify"
  end
end
