class MipsLinuxGnuBinutils < Formula
  desc "Programs to assemble and manipulate binary and object files for the MIPS target"
  homepage "https://www.gnu.org/software/binutils/binutils.html"
  url "https://ftp.gnu.org/gnu/binutils/binutils-2.41.tar.gz"
  mirror "https://ftpmirror.gnu.org/binutils/binutils-2.41.tar.gz"
  sha256 "48d00a8dc73aa7d2394a7dc069b96191d95e8de8f0da6dc91da5cce655c20e45"
  license all_of: ["GPL-2.0-or-later", "GPL-3.0-or-later", "LGPL-2.0-or-later", "LGPL-3.0-only"]

  uses_from_macos "zlib"

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--infodir=#{info}",
                          "--mandir=#{man}",
                          "--target=mips-linux-gnu",
                          "--disable-gprof",
                          "--disable-gdb",
                          "--disable-werror"
    system "make"
    system "make", "install"
  end
end
