class Imgcat < Formula
  desc "Display images inline in iTerm2"
  homepage "https://iterm2.com/documentation-utilities.html"
  head "https://iterm2.com/utilities/imgcat"

  def install
    bin.install "imgcat" => "imgcat"
  end
end
