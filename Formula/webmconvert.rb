class Webmconvert < Formula
  desc "Utility scripts to quickly convert videos to webm via ffmpeg"
  homepage "https://gist.github.com/sgsunder/b502b5de1ed7bbba86044bddfc60b463"
  url "https://gist.github.com/b502b5de1ed7bbba86044bddfc60b463.git"
  version "latest"

  def install
    bin.install "webmconvert.sh" => "webmconvert"
    bin.install "webmconvert-remote.sh" => "webmconvert-remote"
  end
end
