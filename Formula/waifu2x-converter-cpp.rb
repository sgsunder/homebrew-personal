class Waifu2xConverterCpp < Formula
  desc "Improved fork of Waifu2X C++ using OpenCL and OpenCV"
  homepage "https://github.com/DeadSix27/waifu2x-converter-cpp"
  url "https://github.com/DeadSix27/waifu2x-converter-cpp/archive/v5.3.3.tar.gz"
  sha256 "036d82bb4ec2e4a098b084e5f82f21d3a274c6c16e60e7d5dd44478f2cb463ed"
  head "https://github.com/DeadSix27/waifu2x-converter-cpp.git"

  depends_on "cmake" => :build
  depends_on "llvm"
  depends_on "opencv"

  def install
    system "cmake", ".", *std_cmake_args, "-DOPENCV_PREFIX=#{include}/opencv"
    system "make"
    system "make", "install"
  end

  test do
    system "${bin}/waifu2x-converter-cpp", "--version"
  end
end
