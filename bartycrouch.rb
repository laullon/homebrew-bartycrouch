class Bartycrouch < Formula
  desc "Incrementally update your Storyboard localizations with ease"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "e17aa7d99e6f9c51cf053a7b6477042a999b38bbb184b12f03cc3cb9286761ab"

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
