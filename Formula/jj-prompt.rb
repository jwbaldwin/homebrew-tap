class JjPrompt < Formula
  desc "Fast JJ prompt for Starship"
  homepage "https://github.com/jwbaldwin/jj-prompt"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v0.1.1/jj-prompt-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "7e3596d998eb50129626501f97821d95f3cc5672c2dfb6c520c0f2e894c9dcb8"
    else
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v0.1.1/jj-prompt-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "227db9c1aa647a885bcbd41cca81c62d94cb138633971ac47c83d7f30054e8a6"
    end
  end

  def install
    bin.install "jj-prompt"
  end

  test do
    assert_match "jj-prompt", shell_output("#{bin}/jj-prompt --help")
  end
end
