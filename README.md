# Chatterly Discord Bot

Chatterly is a friendly, engaging Discord bot powered by OpenAI's GPT models. It maintains conversation history per user to provide context-aware responses.

You can run this bot in two ways:

1. **[Option 1: GitHub Codespaces (Cloud)](#option-1-%EF%B8%8F-running-in-github-codespaces)** - fast, no installation needed.
2. **[Option 2: Local Machine (PC/Mac)](#option-2-%F0%9F%96%A5%EF%B8%8F-running-locally-pcmac)** - requires Python installation.

---

## Option 1: ☁️ Running in GitHub Codespaces

Run the project instantly in the cloud. Codespaces automatically sets up the environment for you.

### 1. Start the Codespace

1. Click the green **Code** button in the GitHub repository.
2. Select the **Codespaces** tab.
3. Click **Create codespace on main**.

> ⏳ **Please Wait!** The workspace will take 1-2 minutes to set up.

*The setup process will automatically:*

- ✅ Create the virtual environment
- ✅ Install all dependencies
- ✅ Create your `.env` file

### 2. Open the Terminal

Once the Codespace is loaded:

1. **Open Terminal**: Click on **Terminal** menu → **New Terminal**, or press `` Ctrl + ` `` (backtick key).
2. **Verify venv is active**: Look for `(venv)` at the beginning of the terminal line:

   ```
   (venv) @username → /workspaces/chatterly $
   ```

   If you see `(venv)`, the environment is ready! ✅

### 3. Configure API Keys

> ⚠️ **IMPORTANT: You must add your API keys before running the bot!**

1. In the **file explorer** (left panel), click on the `.env` file to open it.
2. **Replace the placeholder values** with your actual keys:

   ```ini
   DISCORD_BOT_TOKEN=your_actual_discord_token_here
   OPENAI_API_KEY=your_actual_openai_key_here
   ```

   | Key | Where to get it |
   |-----|-----------------|
   | `DISCORD_BOT_TOKEN` | [Discord Developer Portal](https://discord.com/developers/applications) |
   | `OPENAI_API_KEY` | [OpenAI API Keys](https://platform.openai.com/api-keys) |

3. **Save the file** (`Ctrl + S` or `Cmd + S`).

### 4. Run the Bot

In the terminal (with `(venv)` activated), run:

```bash
python bot.py
```

---

## Option 2: 🖥️ Running Locally (PC/Mac)

Follow these steps to run the bot on your own computer.

### 1. Prerequisites

- **Python 3.8+**: [Download Here](https://www.python.org/downloads/)
- **VS Code**: [Download Here](https://code.visualstudio.com/)

### 2. Setup

1. Open this folder in VS Code.
2. Open the terminal (`Ctrl + ~` or `Cmd + ~`) and create a virtual environment:

   **Mac / Linux:**

   ```bash
   python3 -m venv venv
   source venv/bin/activate
   ```

   **Windows:**

   ```bash
   python -m venv venv
   .\venv\Scripts\activate
   ```

3. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

### 3. Configuration

1. Create the `.env` file:

   **Mac / Linux:**

   ```bash
   cp .env.example .env
   ```

   **Windows:**

   ```bash
   copy .env.example .env
   ```

2. Open the `.env` file and add your keys:

   ```ini
   DISCORD_BOT_TOKEN=your_actual_discord_token_here
   OPENAI_API_KEY=your_actual_openai_key_here
   ```

### 4. Run the Bot

Make sure your virtual environment is active `(venv)` and run:

```bash
python bot.py
```

---

## 🧠 Memory Feature

The bot uses an **in-memory database**:

- Conversations are remembered per user while the bot is running.
- **Restarting the bot clears the memory.**
