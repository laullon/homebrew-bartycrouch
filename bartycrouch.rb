class Bartycrouch < Formula
  desc "Incrementally update & translate your Strings files."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.2.3.tar.gz"
  version "3.2.3"
  sha256 "5e6833a2dd283489cbf6e145d3ca249921c35197bd4a2aa4e90690f44ad4bcfb"

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
