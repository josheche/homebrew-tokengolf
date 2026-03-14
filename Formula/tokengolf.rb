class Tokengolf < Formula
  desc "Gamify your Claude Code sessions — track token efficiency, earn achievements"
  homepage "https://josheche.github.io/tokengolf/"
  url "https://registry.npmjs.org/tokengolf/-/tokengolf-1.0.1.tgz"
  sha256 "d81354da49ffcf78dd87df3ecfb97638a8d2ba5d23c9f2e6b702cb586520f90f"
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
