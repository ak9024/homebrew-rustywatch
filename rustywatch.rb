class Rustywatch < Formula
  desc "Live reloading for any programming languages with process monitoring"
  homepage "https://rustywatch.vercel.app/"
  url "https://github.com/ak9024/rustywatch/archive/refs/tags/v0.3.12.tar.gz"
  sha256 "d9a7ac8164c047d3f13b5f6514b73638509a58e5c31539fbe1425713f8db2887"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "rustywatch 0.3.12", shell_output("#{bin}/rustywatch --version")
  end
end
