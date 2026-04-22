class Pma < Formula
  desc "Git repository batch management tool"
  homepage "https://github.com/Jeanhwea/project-manager-app"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-arm64-v#{version}.tar.gz"
      sha256 "4e272d19fa1e4a243c619738efd68a35a09c12968ab13bea73272f49a2ee7c7f"
    else
      url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-macos-x86_64-v#{version}.tar.gz"
      sha256 "69b64bdde1ab01e01f0fefd462a859e11b5ead5dde805eadf2422139ff7b18c1"
    end
  end

  on_linux do
    url "https://github.com/Jeanhwea/project-manager-app/releases/download/v#{version}/pma-linux-x86_64-v#{version}.tar.gz"
    sha256 "a2e55b62e9e01c7ef26181b91593a6532525190486b3bfb28aa1fdc70beb171c"
  end

  def install
    bin.install "pma"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pma --version")
  end
end
