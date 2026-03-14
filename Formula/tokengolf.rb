class Tokengolf < Formula
  desc "Gamify your Claude Code sessions — track token efficiency, earn achievements"
  homepage "https://josheche.github.io/tokengolf/"
  url "https://registry.npmjs.org/tokengolf/-/tokengolf-1.0.4.tgz"
  sha256 "c021dffc01981d4cec6efd9ba529c41df4096b7f69b89e8c55705aa85fc6ac3c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def post_install
    ohai "Run 'tokengolf install' to set up Claude Code hooks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokengolf --version")
  end
end
