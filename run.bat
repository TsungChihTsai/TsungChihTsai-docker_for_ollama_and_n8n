@echo off

@REM 建立 Docker 映像檔
docker build -t gemmapro-ollama-image .

@REM 啟動容器
docker run -d -p 11434:11434 --name gemmapro-ollama-container gemmapro-ollama-image

@REM 顯示容器日誌
docker logs gemmapro-ollama-container


@echo off

@REM 刪除舊容器（如果有）
docker rm -f gemmapro-ollama-container

@REM 建立 Docker 映像檔
docker build -t gemmapro-ollama-image .

@REM 啟動容器
docker run -d -p 11434:11434 --name gemmapro-ollama-container gemmapro-ollama-image

@REM 顯示容器日誌
docker logs gemmapro-ollama-container


@REM 啟動 n8n 服務
docker-compose down && docker-compose up -d

echo All tasks completed!
pause
