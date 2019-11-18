require "language/node"

class VueCli < Formula
  desc "Standard Tooling for Vue.js Development"
  homepage "https://cli.vuejs.org/"
  url "https://registry.npmjs.org/@vue/cli/-/cli-4.0.5.tgz"
  version "4.0.5"
  sha256 "c8f76e25983244ddc848ecaaebec813831eefefb2c7e4f19742df3405ba4b24d"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "vue", "--version"
  end
end
