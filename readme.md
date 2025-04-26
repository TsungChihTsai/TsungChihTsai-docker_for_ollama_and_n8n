【Agent 聊天機器人工作流程 (Windows 限定)】
此專案提供一個在 Windows 環境下，利用 Docker 運行視覺化工作流程工具，並整合本地 Ollama 服務來啟動Agent 進行聊天的範例。
**重要提醒：** 本設定流程僅適用於 **Windows** 作業系統。 ## 環境準備 (Prerequisites)

## 環境準備 (Prerequisites) 在開始之前，請確保您的 Windows 電腦已經準備好以下環境：

1. **Docker Desktop：** * 必須安裝 (https://docs.docker.com/desktop/setup/install/windows-install/) 並運行 Docker Desktop。這是用來運行工作流程工具的容器。 * 請確認 Docker 服務正在正常運行中。 
2. **本地 Ollama 服務：** * 必須在您的 Windows 主機上**直接**安裝並運行 Ollama 應用程式 (非 Docker 版本)。 * 確保 Ollama 服務正在背景運行。

## 設定與運行步驟 (Setup & Running) 依照以下步驟設定並啟動工作流程：

1. **雙擊run.bat** (此腳本會使用 `docker-compose.yml` 檔案來啟動並配置 **n8n工作流程工具的 Docker 容器**。並利用Dockerfile來建立`gemmapro-ollama-container` 的 **Ollama Docker 容器**，並將其內部 11434 端口映射到 Windows 主機的 11434 端口。)
2. 進入http://localhost:5678/home/workflows
3. 首次使用n8n可能會要求註冊帳戶或登入。請依照介面指示完成 (請用免費版本)。
4. 導入chatbot_GemmaPro_q4.json
5. 確定ollama accnout的Base URL 為 http://host.docker.internal:11434
* **重要：** 在這些 Ollama 節點的設定中，將 `Base URL` 或 `Ollama API Endpoint` (名稱可能因平台而異) 設定為 `http://host.docker.internal:11434`

* **解釋：** `host.docker.internal` 是一個特殊的主機名，它允許運行在 Docker 容器內的應用程式 (即工作流程工具) 透過這個地址訪問到運行 Docker 的**主機本身** (`localhost`)。因為您的 Ollama 是直接安裝在 Windows 主機上，所以需要這樣設定才能從 Docker 容器中連線到它。
6. 選擇好您的模型
7. 可以點擊When chat message received的node，在聊天室窗輸入您的問題
