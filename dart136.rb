require 'formula'

class Dart136 < Formula
  homepage 'https://www.dartlang.org/'

  version '1.3.6'
  if MacOS.prefer_64_bit?
    url 'https://storage.googleapis.com/dart-archive/channels/stable/release/35530/sdk/dartsdk-macos-x64-release.zip'
    sha256 '02dd67ffb980b407bb87714083df1a4f18f4eb5f1898458411ab145e4f7e093d'
  else
    url 'https://storage.googleapis.com/dart-archive/channels/stable/release/35530/sdk/dartsdk-macos-ia32-release.zip'
    sha256 '300929d786fa55a5c11f4e66f5be57940ad3ddab408a04cb83016fa187daa99f'
  end

  def install
    libexec.install Dir['*']
    bin.install_symlink "#{libexec}/bin/dart"
    bin.write_exec_script Dir["#{libexec}/bin/{pub,docgen,dart?*}"]
  end

  def caveats; <<-EOS.undent
    Please note the path to the Dart SDK:
      #{opt_libexec}
    EOS
  end

  test do
    (testpath/'sample.dart').write <<-EOS.undent
      void main() {
        print(r"test message");
      }
    EOS

    assert_equal "test message\n", shell_output("#{bin}/dart sample.dart")
  end
end
