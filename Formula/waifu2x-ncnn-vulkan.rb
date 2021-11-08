class Waifu2xNcnnVulkan < Formula
  desc "ncnn implementation of waifu2x converter. Runs fast on Intel / AMD / Nvidia with Vulkan API."
  homepage "https://github.com/nihui/waifu2x-ncnn-vulkan"
  url "https://github.com/nihui/waifu2x-ncnn-vulkan/releases/download/20210521/waifu2x-ncnn-vulkan-20210521-macos.zip"
  version "20210521"
  sha256 "c71d0c622132989be87c1266287ac94c50d634337b8060c1a75e78f91a656f8e"

  def install
    prefix.install Dir["*"]
    Dir.mkdir(bin)
    wrapper = File.new("waifu2x.sh", "w")
    wrapper.puts("\#!/bin/sh -e")
    wrapper.puts("cd #{prefix}")
    wrapper.puts("./waifu2x-ncnn-vulkan \"$@\"")
    wrapper.close
    bin.install "waifu2x.sh" => "waifu2x"
  end
end
