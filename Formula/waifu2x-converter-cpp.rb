class Waifu2xConverterCpp < Formula
  desc "Improved fork of Waifu2X C++ using OpenCL and OpenCV"
  homepage "https://github.com/DeadSix27/waifu2x-converter-cpp"
  head "https://github.com/DeadSix27/waifu2x-converter-cpp.git"

  depends_on "cmake" => :build
  depends_on "llvm"
  depends_on "opencv"

  def install
    inreplace "src/modelHandler_OpenCL.cpp", "std::filesystem", "std::__fs::filesystem"
    inreplace "src/main.cpp", "std::filesystem", "std::__fs::filesystem"
    system "cmake", ".", *std_cmake_args, "-DOPENCV_PREFIX=#{include}/opencv"
    system "make"
    system "make", "install"
  end

  test do
    system "${bin}/waifu2x-converter-cpp", "--version"
  end
end
