# Generated with JReleaser 1.3.1 at 2023-08-10T08:28:58.176445902Z
class Wilo < Formula
  desc "This project provides a logging utility for Bash scripts."
  homepage "https://julbme.github.io/wilo/"
  url "https://github.com/julbme/wilo/releases/download/v1.0.2/wilo-1.0.2.zip"
  version "1.0.2"
  sha256 "e4c998f208b441376ba0aed44b3ac012e4df4a3b49c02d66ab91faef62d2c2a7"
  license "MIT License"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wilo" => "wilo"
  end

  test do
    output = shell_output("#{bin}/wilo --version")
    assert_match /^wilo 1.0.2 /, output
  end
end
