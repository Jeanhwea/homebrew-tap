class Pma < Formula
  desc "Git repository batch management tool"
  homepage "https://github.com/Jeanhwea/project-manager-app"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-arm64-v#{version}.tar.gz"
      sha256 "6844234827b1305386dfe40961c1879c0406d3f8b9b4b7140da4ff09ecfb8c08"
    else
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-x86_64-v#{version}.tar.gz"
      sha256 "40c0a15a3f82de8ea79a103648b2c1dd028cc69487881cea314ca4549cad25f1"
    end
  end

  on_linux do
    url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-linux-x86_64-v#{version}.tar.gz"
    sha256 "698982d9aeea82de938098412535b275f56e5b4a069b9f5b46d5f75f1569b92b"
  end

  def install
    bin.install "pma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pma --version")
  end
end
