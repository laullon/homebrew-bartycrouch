class BartyCrouch < Formula
  desc "Incrementally update your Storyboard localizations with ease"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/0.2.4.tar.gz"
  version "0.2.4"
  sha256 "a196536a075c75b9f22df80f99e0c4b12dc64b7978224d91d55c2211ba86355c"

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
