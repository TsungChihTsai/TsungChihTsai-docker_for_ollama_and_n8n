# 使用 Ollama 的官方映像
FROM ollama/ollama:latest

# 可選：更新並安裝 curl，用於健康檢查（可省略）
RUN apt-get update && apt-get install -y --no-install-recommends curl

# 暴露 Ollama 服務端口
EXPOSE 11434

# 設定 Ollama 監聽所有網絡介面
ENV OLLAMA_HOST=0.0.0.0

# 直接啟動 Ollama 服務
CMD ["ollama", "serve"]