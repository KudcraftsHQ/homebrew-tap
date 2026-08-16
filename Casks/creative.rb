cask "creative" do
  version "0.1.0"

  on_macos do
    on_arm do
      sha256 "4732eb14b96e037133b63a2f5ffc6c580f1079c7da22fc05c19fe1ef6f710054"
      url "https://github.com/KudcraftsHQ/creative/releases/download/v0.1.0/creative-v0.1.0-macos-arm64.tar.gz"
      binary "creative-macos-arm64/creative"
      binary "creative-macos-arm64/creative-mcp"
    end
    on_intel do
      sha256 "90a221639fdbb054b47b4c5a2655e40551e9e68bbc57983f843fea375422850c"
      url "https://github.com/KudcraftsHQ/creative/releases/download/v0.1.0/creative-v0.1.0-macos-x64.tar.gz"
      binary "creative-macos-x64/creative"
      binary "creative-macos-x64/creative-mcp"
    end
  end

  on_linux do
    on_arm do
      sha256 "369f0b36c942d26da295c325007b42dc8c6bd680fbb978313c482e310ad0d9a3"
      url "https://github.com/KudcraftsHQ/creative/releases/download/v0.1.0/creative-v0.1.0-linux-arm64.tar.gz"
      binary "creative-linux-arm64/creative"
      binary "creative-linux-arm64/creative-mcp"
    end
    on_intel do
      sha256 "081f738f225cbc1e6f41d45499f616ab3e364d5b7cfe7c00789cf7f0acb5f043"
      url "https://github.com/KudcraftsHQ/creative/releases/download/v0.1.0/creative-v0.1.0-linux-x64.tar.gz"
      binary "creative-linux-x64/creative"
      binary "creative-linux-x64/creative-mcp"
    end
  end

  name "creative"
  desc "Headless design engine: JSON documents, Skia rendering, auto-fitting rich text"
  homepage "https://github.com/KudcraftsHQ/creative"

  # The binaries are unsigned, so Gatekeeper quarantines anything downloaded this
  # way. Clearing the attribute is the documented workaround for an unnotarised cask.
  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", staged_path]
    end
  end
end
