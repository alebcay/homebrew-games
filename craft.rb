require "formula"

class Craft < Formula
  homepage "http://www.michaelfogleman.com/craft/"
  version "HEAD"
  url "https://github.com/fogleman/Craft/archive/v1.0.tar.gz"
  sha1 "0e4f49d5d1a2f33204b98f76c5d34b30077babb1"

  depends_on "cmake" => :build

  def install
    system "cmake", "."
    system "make"
    bin.install('craft')
  end
end
