class Vp1lightMac < Formula
  desc ""
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"
  url "qat.pitt.edu/other-src/vp1light-mac-1.0.tar.gz"
  sha256 "ebfb0529087a61cf41fc96294974710a4423359dd550c7934c7935bf941df583"
  # depends_on "cmake" => :build
  depends_on "jfb3615/repo/vp1light-root"
  depends_on "jfb3615/repo/qat3d"
  depends_on "jfb3615/repo/vp1light-googletest"
  depends_on "jfb3615/repo/heputils"
  depends_on "jfb3615/repo/mcutils"
  depends_on "jfb3615/repo/heppdt"
  def install
    system "pwd"
    system "mkdir build-area"
    system "cd build-area"
    system "pwd"
    system "cd build-area && cmake", "../build-area/Projects/NewVP1Light", *std_cmake_args
    system "cd build-area && make", "install" # if this fails, try separate make/make install steps
  end

end
