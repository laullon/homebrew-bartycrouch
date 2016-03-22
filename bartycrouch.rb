class Bartycrouch < Formula
  desc "Automatically update/translate your .strings files on build (reacting to Storyboard/XIB changes)"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/1.4.2.tar.gz"
  version "1.4.2"
  sha256 "920cb8f4a190fc50d7e94daff78076354061c0091b68d7415af56229072ba1b0"

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
