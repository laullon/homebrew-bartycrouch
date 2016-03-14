class Bartycrouch < Formula
  desc "Automatically update/translate your .strings files on build (reacting to Storyboard/XIB changes)"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/1.4.0.tar.gz"
  version "1.4.0"
  sha256 "8eedf0e9d9f8bee28cac9bb438ad39e2f244781b68547b607fba7c59e08bd33b"

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
