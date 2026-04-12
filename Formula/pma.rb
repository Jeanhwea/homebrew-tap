class Pma < Formula
  desc "Git repository batch management tool"
  homepage "https://github.com/Jeanhwea/project-manager-app"
  version "0.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-arm64-v#{version}.tar.gz"
      sha256 "f470777fc781384454ff59c2b73c195af3a3216a53c87674a3dbb01e22f27ebc"
    else
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-x86_64-v#{version}.tar.gz"
      sha256 "74cb5fc870f25bc1c2f01fb64b85ae063bfd6f1118c66b506169c9fdee18682e"
    end
  end

  on_linux do
    url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-linux-x86_64-v#{version}.tar.gz"
    sha256 "1735895a24b6023fc5efdf476f7a22cc2a5324b94104ff5d45b5d690dcea5850"
  end

  def install
    bin.install "pma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pma --version")
  end
end
