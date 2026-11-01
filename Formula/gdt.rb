class Gdt < Formula
  desc "Version manager, addon manager and test runner for Godot"
  homepage "https://gdt.roxguel.dev"
  license any_of: ["MIT", "Apache-2.0"]

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/roxguel/godot-dev-tools/releases/download/v0.1.1/gdt-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "8695fe8110b198b6b3ba12bd8b41284a9baefa902976af1e8469419ce48f39d6"
    end
    on_intel do
      url "https://github.com/roxguel/godot-dev-tools/releases/download/v0.1.1/gdt-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "86003c3a446d4a7e72d6a421226862e4aca43e6809ee1b0b2dfbd7ebfe016813"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/roxguel/godot-dev-tools/releases/download/v0.1.1/gdt-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79e1ddfd261eda30289d46a2871e91264b3ed5b3658636cea4960f27ee1840a3"
    end
    on_intel do
      url "https://github.com/roxguel/godot-dev-tools/releases/download/v0.1.1/gdt-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "518b4ce08b68f4a51e8de0c934b2bcbc9606bbec2658cd1f1cb084863d210453"
    end
  end

  def install
    bin.install "gdt"
  end

  test do
    assert_match "gdt #{version}", shell_output("#{bin}/gdt --version")
  end
end
