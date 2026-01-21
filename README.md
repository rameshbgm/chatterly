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

*The setup process will automatically create the virtual environment, install dependencies, and create your `.env` file.*

### 2. Configure API Keys

Once the Codespace is loaded:

1. Open the `.env` file in the file explorer.
2. Add your API keys:

   ```ini
   DISCORD_BOT_TOKEN=your_actual_discord_token_here
   OPENAI_API_KEY=your_actual_openai_key_here
   ```

### 3. Run the Bot

In the terminal (automatically opened), run:

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
