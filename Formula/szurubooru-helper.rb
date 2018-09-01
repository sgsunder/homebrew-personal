class SzurubooruHelper < Formula
  desc "Perform batch functions on szurubooru posts"
  homepage "https://gist.github.com/sgsunder/615d2dda8606a330177fe5ffe2e3ef20"
  url "https://gist.github.com/615d2dda8606a330177fe5ffe2e3ef20.git"
  version "latest"

  def install
    bin.install "szurubooru-helper.py" => "szurubooru-helper"
  end
end
