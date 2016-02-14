class Bartycrouch < Formula
  desc "Incrementally update your Storyboard localizations with ease"
  homepage "https://github.com/Flinesoft/BartyCrouch"
  url "https://github.com/Flinesoft/BartyCrouch/archive/0.2.2.tar.gz"
  version "0.2.2"
  sha256 "af7b598df6069103ca34bb720fc27dbdb087c67dc6b5022a0a73f2f6b47f12d0"

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
