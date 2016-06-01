class Bartycrouch < Formula
  desc "Incrementally update & translate your Strings files."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.0.1.tar.gz"
  version "3.0.1"
  sha256 "17db463a7951ccb800cdb745a93173c5759a48e2744ec06c89432e72b531cbdb"

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
