cask "ai-model-manager" do
  version "0.1.8"
  sha256 "e9118a734b681a0802152cc5e92a26b2f3f8244205f79d03ca7fb9277d166918"

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
