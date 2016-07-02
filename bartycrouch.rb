class Bartycrouch < Formula
  desc "Incrementally update & translate your Strings files."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.2.1.tar.gz"
  version "3.2.1"
  sha256 "d0222843bec8bc2399f74613411d515dcd71d2dad1c9cddfba5381f6b35eb18d"

  depends_on :xcode

  def install
    xcodebuild "-project", "BartyCrouch.xcodeproj",
               "-scheme", "BartyCrouch CLI",
               "SYMROOT=build",
               "DSTROOT=#{prefix}",
               "INSTALL_PATH=/bin",
               "-verbose",
               "install"
  end
end
