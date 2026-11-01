class JjPrompt < Formula
  desc "Fast JJ prompt for Starship"
  homepage "https://github.com/jwbaldwin/jj-prompt"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v0.1.2/jj-prompt-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c19772fd8e6ee5cb3fb4af3c43ed88a3de724b0abe883227c5562bd9a1f9d21b"
    else
      url "https://github.com/jwbaldwin/jj-prompt/releases/download/v0.1.2/jj-prompt-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a461683c562b63f43f377d03f4d26c877dea3ce1e89fb708858f2fda5fa6c6bb"
    end
  end

  def install
    bin.install "jj-prompt"
  end

  test do
    assert_match "jj-prompt", shell_output("#{bin}/jj-prompt --help")
  end
end
