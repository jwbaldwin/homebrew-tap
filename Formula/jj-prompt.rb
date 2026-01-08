class JjPrompt < Formula
  desc "Fast JJ prompt for Starship"
  homepage "https://github.com/jwbaldwin/jj-prompt"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v#{version}/jj-prompt-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v#{version}/jj-prompt-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_SHA256"
    end
  end

  def install
    bin.install "jj-prompt"
  end

  test do
    assert_match "jj-prompt", shell_output("#{bin}/jj-prompt --help")
  end
end
