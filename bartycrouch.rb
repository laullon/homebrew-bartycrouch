class Bartycrouch < Formula
  desc "Incrementally update & translate your Strings files."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.2.2.tar.gz"
  version "3.2.2"
  sha256 "4535fe4fe2821b795500e7fdb29bce1e36e6711961f45bd4f23e6424c049370a"

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
