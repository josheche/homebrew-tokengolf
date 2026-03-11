class Tokengolf < Formula
  desc "Gamify your Claude Code sessions — track token efficiency, earn achievements"
  homepage "https://josheche.github.io/tokengolf/"
  url "https://registry.npmjs.org/tokengolf/-/tokengolf-0.5.0.tgz"
  sha256 "77c0b99d6b44a3078c58624c9d7d6b9d02d3c289a019fda48a44ba2202ac7549"
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
