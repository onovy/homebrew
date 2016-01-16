class Otodo < Formula
  desc "Powerful TUI for todo.txt"
  homepage "https://github.com/onovy/otodo"
  url "https://github.com/onovy/otodo.git"
  version "HEAD"

  bottle :unneeded

  def install
    bin.install "otodo"
    prefix.install Dir["*"]
  end

  def caveats; <<-EOS.undent
    To configure, copy the default config to your HOME/.otodo and edit it:
      cp #{prefix}/config.ini ~/.otodo/config.ini
    EOS
  end

  test do
    system "cd #{prefix}/tests && ./run"
  end
end
