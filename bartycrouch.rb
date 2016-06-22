class Bartycrouch < Formula
  desc "Incrementally update & translate your Strings files."
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/3.2.0.tar.gz"
  version "3.2.0"
  sha256 "5cff4a6c5c4ec955157845eca5d1a2fc98a7aaa13c8961119ae81a97642c4872"

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
