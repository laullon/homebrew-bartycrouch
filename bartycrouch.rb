class Bartycrouch < Formula
  desc "Automatically update/translate your .strings files on build (reacting to Storyboard/XIB changes)"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/1.4.1.tar.gz"
  version "1.4.1"
  sha256 "f9d3679cbdda9578f3f5a12eb59d3ad363bd8c1457d95827f83c9bd392c4ae97"

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
