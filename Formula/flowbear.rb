class Flowbear < Formula
  desc "The Anti-Ghostwriter - Privacy-first writing assistant"
  homepage "https://github.com/scttfrdmn/flowbear"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/scttfrdmn/flowbear/releases/download/v#{version}/flowbear-#{version}-darwin-arm64.tar.gz"
      sha256 "decdf473373d88cb13da0de26ab132d087ae9b140e8f271c1dfa3c14ad7afc21"
    else
      url "https://github.com/scttfrdmn/flowbear/releases/download/v#{version}/flowbear-#{version}-darwin-amd64.tar.gz"
      sha256 "60567898dd69dd04f613f7988594e92ec038b27be3cd45ba1eb734e0e9ddf522"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "flowbear-darwin-arm64" => "flowbear"
    else
      bin.install "flowbear-darwin-amd64" => "flowbear"
    end
  end

  test do
    system "#{bin}/flowbear", "version"
  end
end
