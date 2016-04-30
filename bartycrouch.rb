class Bartycrouch < Formula
  desc "Automatically update/translate your .strings files on build (reacting to Storyboard/XIB changes)"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/2.0.0.tar.gz"
  version "2.0.0"
  sha256 "35dcd4ad2c5000c42cfb193f114327d3a41f99bf52baef6a1aae6eea820c7e9c"

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
