class Bartycrouch < Formula
  desc "Incrementally update your Strings files from .swift, .h, .m, .storyboard or .xib files and use machine-translation."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.0.0.tar.gz"
  version "3.0.0"
  sha256 "b19b2615fc7ad443a0982b682c8dd40d7e381f4ef642ec2e1b8b86080240d36a"

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
