class Pma < Formula
  desc "Git repository batch management tool"
  homepage "https://github.com/Jeanhwea/project-manager-app"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-arm64-v#{version}.tar.gz"
      sha256 "90ed358c1c5a96e531cf33069d83401efae49c1881c789238855e4e0d4ad1ba1"
    else
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-x86_64-v#{version}.tar.gz"
      sha256 "3f876ac74a0e260d784f9d917eec848c9c8ccc56bfb885044e5a865841d9403c"
    end
  end

  on_linux do
    url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-linux-x86_64-v#{version}.tar.gz"
    sha256 "32ab3c1ea6f0a1e181bc1eb15c94a7af6dfdb963d86801909d66bb583a8a26cf"
  end

  def install
    bin.install "pma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pma --version")
  end
end
