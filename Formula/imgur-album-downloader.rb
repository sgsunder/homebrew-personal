class ImgurAlbumDownloader < Formula
  desc "Bash script used to download imgur albums"
  homepage "https://github.com/manabutameni/Imgur"
  url "https://github.com/manabutameni/Imgur.git", :revision => "85889c40419affadc0dad89b0c3fbc375ec97850"

  version "1.0.0"

  depends_on "jsawk"
  depends_on "curl"
  depends_on "libiconv"

  def install
    inreplace "imgur.sh", "api_key=\"\"", "api_key=$IMGUR_API_TOKEN"
    bin.install "imgur.sh" => "imgur-album-downloader"
  end

  test do
    system "#{bin}/imgur-album-downloader", "http://imgur.com/a/ej9g4"
  end
end
