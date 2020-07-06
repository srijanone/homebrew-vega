# This file was generated by GoReleaser. DO NOT EDIT.
class Vega < Formula
  desc "vega"
  homepage ""
  version "1.0.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/srijanone/vega/releases/download/v1.0.3/vega_darwin_amd64.tar.gz"
    sha256 "9e4c175e6ebbdf793f89cfe968d11c1f62d243793435f19c3091b7f98c6ed220"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/srijanone/vega/releases/download/v1.0.3/vega_linux_amd64.tar.gz"
      sha256 "08c6fa9d8f8079d5fc61a75ed49738560b7e8e2a77cd063342f039f1bccac704"
    end
  end
  
  depends_on "git"
  depends_on "windmilleng/tap/tilt"

  def install
    bin.install "vega"
  end

  test do
    system "#{bin}/vega version"
  end
end
