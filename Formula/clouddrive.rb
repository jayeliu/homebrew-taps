# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clouddrive < Formula
  desc "CloudDrive is a powerful multi-cloud disk management tool that provides users with a one-stop multi-cloud disk solution that includes cloud disk local mount."
  homepage "https://www.clouddrive2.com/index.html"
  url "https://github.com/jayeliu/homebrew-taps/releases/download/0.6.13/clouddrive-0.6.13.tar.gz"
  sha256 "360fb6cb612ee20a14b26f2b6b4f37b8a85aa0e603fa2d6b77f9a20c0befe193"
  license ""

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    bin.install "clouddrive"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test clouddrive`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

