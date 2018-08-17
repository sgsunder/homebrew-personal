class Bin2iso < Formula
  desc "Convert BIN/CUE files to ISO files"
  homepage "http://users.eastlink.ca/~doiron/bin2iso/"
  url "http://users.eastlink.ca/~doiron/bin2iso/linux/bin2iso19b_linux.c"
  version "1.9b"
  sha256 "1e8a6ae79e91325acd50f3a0e506edf4d8cb57b72d1dcfd8b276a04aff82e43d"

  def install
    system ENV.cc, "bin2iso19b_linux.c", "-o", "bin2iso"
    bin.install "bin2iso"
  end

  test do
    system "test", "#{bin}/bin2iso"
  end
end
