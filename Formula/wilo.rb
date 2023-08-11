# Generated with JReleaser 1.3.1 at 2023-08-11T10:02:42.604640131Z
class Wilo < Formula
  desc "This project provides a logging utility for Bash scripts"
  homepage "https://julbme.github.io/wilo/"
  url "https://github.com/julbme/wilo/releases/download/v1.0.3/wilo-1.0.3.zip"
  sha256 "a2774b0bc7b4d3fd3013719d16529abff34dd7c389fd85a8f1ac1f46e9ea374e"
  license "MIT"

  depends_on "jq"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/wilo" => "wilo"
  end

  test do
    output = shell_output("#{bin}/wilo --version")
    assert_match "/^wilo 1.0.3 /", output
  end
end
