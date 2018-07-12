require "language/node"

class Peerflix < Formula
  desc "Streaming torrent client for Node.js"
  homepage "https://github.com/mafintosh/peerflix"
  url "https://registry.npmjs.org/peerflix/-/peerflix-0.39.0.tgz"
  version "0.39.0"
  sha256 "8d5314e1ba151330658a4295665bd4a394d18f0b6569c1b623ea638a425ba205"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/peerflix", "--help"
  end
end
