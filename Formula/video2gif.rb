class Video2gif < Formula
  desc "Video to GIF Conversion in ffmpeg"
  homepage "https://gist.github.com/sgsunder/feecbbff7e1641bb95a4a916560f9a52"
  url "https://gist.github.com/feecbbff7e1641bb95a4a916560f9a52.git"
  version "latest"

  def install
    bin.install "video2gif.sh" => "video2gif"
  end
end
