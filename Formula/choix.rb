class Choix < Formula
  desc "Photo and video culling tool"
  homepage "https://github.com/volodymyrsmirnov/choix"
  url "https://github.com/volodymyrsmirnov/choix/releases/download/v0.1.8/choix-osx-universal"
  version "0.1.8"
  sha256 "66d2a843a1708d17be2bca8e023f2f1a0d82293938b6225d92c206a9453efc61"
  license "MIT"
  # Bump when only metadata/deps change (binary URL unchanged) so an existing
  # `brew upgrade choix` reinstalls and pulls in the dependencies below.
  revision 1

  # Runtime dependencies choix shells out to / dlopen()s:
  #   exiftool    — metadata extraction (internal/meta)
  #   ffmpeg      — video keyframes + RAW/HEIC thumbnail fallback (internal/thumb)
  #   onnxruntime — CLIP visual-clustering embeddings (internal/ai/local).
  #                 choix discovers libonnxruntime.dylib under the brew opt prefix.
  depends_on "exiftool"
  depends_on "ffmpeg"
  depends_on :macos
  depends_on "onnxruntime"

  def install
    binary = Dir["choix-*"].first
    bin.install binary => "choix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/choix --version")
  end
end
