class Bartycrouch < Formula
  desc "Incrementally update your Storyboard/XIB localizations with ease"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "9523a60b9bd9cb62c88e1cf18ee6fa23bf7477674e5e16c3b9f7bdf90629cfdf"

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
