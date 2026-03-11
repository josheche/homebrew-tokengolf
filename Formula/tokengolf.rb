class Tokengolf < Formula
  desc "Gamify your Claude Code sessions — track token efficiency, earn achievements"
  homepage "https://josheche.github.io/tokengolf/"
  url "https://registry.npmjs.org/tokengolf/-/tokengolf-0.5.3.tgz"
  sha256 "e03d7d80b47143ea3758aed289fd3c108ab746d0578af439a8d4258402d55dfa"
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
