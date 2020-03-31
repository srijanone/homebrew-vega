# This file was generated by GoReleaser. DO NOT EDIT.
class Vega < Formula
  desc "vega"
  homepage ""
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/srijanone/vega/releases/download/v0.0.1/vega_0.0.1_mac_x86_64.tar.gz"
    sha256 "21f950a3282784f6d0ba3810186a6884bba6557d67bb9b2318b083029684150a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/srijanone/vega/releases/download/v0.0.1/vega_0.0.1_linux_x86_64.tar.gz"
      sha256 "8575454eb7640ad076c0f704835a44b4034e15c82c175dd67c272dee55935b4e"
    end
  end

  def install
    bin.install "vega"
  end

  test do
    system "#{bin}/vega version"
  end
end
