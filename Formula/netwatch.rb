class Netwatch < Formula
  desc "Modern network traffic monitor for Unix systems, inspired by nload but written in Rust"
  homepage "https://github.com/vietcgi/netwatch"
  version "0.1.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/vietcgi/netwatch/releases/download/v#{version}/netwatch-macos-arm64.tar.gz"
      sha256 "6060b0776433df2bc6660683240e0498810a3e074cbf1d24ed06404b9a037a4e"
    else
      url "https://github.com/vietcgi/netwatch/releases/download/v#{version}/netwatch-macos-x86_64.tar.gz"
      sha256 "d4bf2b9fb4a9c4f7a518719bc6d3a9b7c598439485f5f82f1353882180f7d0ef"
    end
  end

  def install
    bin.install "netwatch"
  end

  test do
    # Test version output
    assert_match version.to_s, shell_output("#{bin}/netwatch --version")
    
    # Test help output
    assert_match "USAGE:", shell_output("#{bin}/netwatch --help")
    
    # Test list interfaces (should not fail even without network interfaces in test environment)
    system "#{bin}/netwatch", "--list"
  end

  def caveats
    <<~EOS
      netwatch is a network traffic monitor that requires access to network interfaces.
      
      Usage examples:
        netwatch                    # Monitor default interface
        netwatch eth0               # Monitor specific interface
        netwatch --list             # List available interfaces
        netwatch --high-perf        # Enable high performance mode
        
      For more options, run: netwatch --help
    EOS
  end
end