cask "ai-model-manager" do
  version "0.1.6"
  sha256 "8a125bb5f73a4b7ffc9f726b5dffe55f0cd03f32fc9a21236df86c8de3c70f61"

  url "https://github.com/ziguifrido/ai-model-manager/releases/download/v#{version}/AIModelManager.zip"

  name "AI Model Manager"
  desc "Discover and manage local AI models from Ollama, LM Studio, Hugging Face, MLX, and vLLM"
  homepage "https://github.com/ziguifrido/ai-model-manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AI Model Manager.app"

  zap trash: [
    "~/Library/Application Support/AI Model Manager",
    "~/Library/Caches/com.marcos.my-ai-models",
    "~/Library/Preferences/com.marcos.my-ai-models.plist",
  ]
end
