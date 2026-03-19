class Tokengolf < Formula
  desc "Gamify your Claude Code sessions — track token efficiency, earn achievements"
  homepage "https://josheche.github.io/tokengolf/"
  url "https://registry.npmjs.org/tokengolf/-/tokengolf-1.1.2.tgz"
  sha256 "ee8deebfc545ac00b9ab4541f0c552f5eebfd605b66c300414b58e813f78b6f5"
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
