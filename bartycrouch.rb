class Bartycrouch < Formula
  desc "Automatically update/translate your .strings files on build (reacting to Storyboard/XIB changes)"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/1.1.0.tar.gz"
  version "1.1.0"
  sha256 "b541063d6069d2a8c2ddac5c679f9dcb27f12f6c1353fada7a3bf78c663fb0d7"

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
