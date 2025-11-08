class Flowbear < Formula
  desc "The Anti-Ghostwriter - Privacy-first writing assistant"
  homepage "https://github.com/scttfrdmn/flowbear"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/scttfrdmn/flowbear/releases/download/v#{version}/flowbear-#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    else
      url "https://github.com/scttfrdmn/flowbear/releases/download/v#{version}/flowbear-#{version}-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64_SHA256"
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
