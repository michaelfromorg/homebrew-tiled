class Til < Formula
  desc "Keep a lightweight, append-first log of what you learn"
  homepage "https://github.com/michaelfromorg/TILed"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/michaelfromorg/TILed/releases/download/v1.2.0/til_v1.2.0_darwin_arm64.tar.gz"
      sha256 "39baafe2fc55691dd2b3009089409aaad97f4af092ac169f235a4acaca64fbc4"
    else
      url "https://github.com/michaelfromorg/TILed/releases/download/v1.2.0/til_v1.2.0_darwin_amd64.tar.gz"
      sha256 "4d4796049ea0597fcc4d1cea4afe34cb844e707cc40d84bd0e222eacf7d9abc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/michaelfromorg/TILed/releases/download/v1.2.0/til_v1.2.0_linux_arm64.tar.gz"
      sha256 "bdf7a706ffd51f91cd749d275a68e2be9ee44ebc1c49df55eb348b6b12ec8c26"
    else
      url "https://github.com/michaelfromorg/TILed/releases/download/v1.2.0/til_v1.2.0_linux_amd64.tar.gz"
      sha256 "2742fad14af33623e681dfaff99ceff14e618f643b833290774f3379af4cf5fd"
    end
  end

  def install
    bin.install "til"
  end

  test do
    assert_match "til v#{version}", shell_output("#{bin}/til version")
  end
end
