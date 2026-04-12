class Pma < Formula
  desc "Git repository batch management tool"
  homepage "https://github.com/Jeanhwea/project-manager-app"
  version "0.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-arm64-v#{version}.tar.gz"
      sha256 "3241e7e399894865a72766563049d4063383406b57e9913f040418770a80711d"
    else
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-x86_64-v#{version}.tar.gz"
      sha256 "85561a9c242f4842b94b73714ee5a88c359f5c95ad45729709e6af05828567b4"
    end
  end

  on_linux do
    url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-linux-x86_64-v#{version}.tar.gz"
    sha256 "d2d6b156bb42e9b53188549bcaed5f9ca4314969fe60630b4b13b871c2899b3c"
  end

  def install
    bin.install "pma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pma --version")
  end
end
