class Spongebob < Formula
  desc "CLI for writing SPonGeBob TeXT"
  homepage "https://github.com/calini/spongebob"
  url "https://github.com/calini/spongebob.git", tag: "v0.0.1", revision: "4e85ed229addef4a41db3bc46545bd1003a652fb"

  head do
    url "https://github.com/calini/spongebob.git", branch: "master"
  end

  # Requires Go
  depends_on "go" => :build

  def install
    ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
    system "go", "build", "-o", "bin/spongebob"
    bin.install "bin/spongebob" => "spongebob"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/spongebob", "\"Hello, World!\""
  end
end
