class Jumpotp < Formula
  desc "Assist authorized SSH TOTP prompts and persistent connections"
  homepage "https://github.com/nxxxsooo/jumpotp"
  url "https://github.com/nxxxsooo/jumpotp/releases/download/v0.2.2/jumpotp-darwin-arm64"
  sha256 "72ab43f3adee540390699b7df275a777c89a52ac246c9bf347dbe469a0dffdf0"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jumpotp-darwin-arm64" => "jumpotp"
  end

  test do
    assert_match '"version":"0.2.2"', shell_output("#{bin}/jumpotp version --json")
    assert_match "--headless", shell_output("#{bin}/jumpotp help workspace")
  end
end
