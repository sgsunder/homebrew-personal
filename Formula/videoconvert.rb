class Videoconvert < Formula
  desc "Helper tool for quick ffmpeg conversions"
  homepage "https://gist.github.com/sgsunder/2c099dedee6172cf1ed93ca5d310821d"
  url "https://gist.github.com/feecbbff7e1641bb95a4a916560f9a52.git"
  version "latest"

  def install
    bin.install "videoconvert.py" => "videoconvert"
  end
end
