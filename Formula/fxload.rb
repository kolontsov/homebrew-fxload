class Fxload < Formula
  desc "Firmware download to EZ-USB devices"
  homepage "https://github.com/kolontsov/nexys2-osx/tree/master/fxload"
  url "https://github.com/kolontsov/nexys2-osx/archive/v1.0.0.tar.gz"
  sha256 "e6eace9530ac1d1af5e0c8d3a6aeb83aaac9c9b69703613bc9cdded191628927"
  depends_on "xcodegen" => :build

  def install
    Dir.chdir "fxload"
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/fxload", "-h"
  end
end
