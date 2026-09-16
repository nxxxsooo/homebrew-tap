class Jumpotp < Formula
  desc "Assist authorized SSH TOTP prompts and persistent connections"
  homepage "https://github.com/nxxxsooo/jumpotp"
  url "https://github.com/nxxxsooo/jumpotp/releases/download/v0.3.0/jumpotp-darwin-arm64"
  sha256 "0736ebd7f85657fb5b7a49c157928992d6fc8c510ab4275088d63fd892bde59d"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "jumpotp-darwin-arm64" => "jumpotp"
  end

  test do
    assert_match '"version":"0.3.0"', shell_output("#{bin}/jumpotp version --json")
    assert_match "--headless", shell_output("#{bin}/jumpotp help workspace")
  end
end
