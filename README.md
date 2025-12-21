# Chatterly Discord Bot

Chatterly is a friendly, engaging Discord bot powered by OpenAI's GPT models. It maintains conversation history per user to provide context-aware responses.

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

### 1. Python
You need Python installed to run this bot.
- **Download Python**: [https://www.python.org/downloads/](https://www.python.org/downloads/)
- *Note:* During installation on Windows, ensure you check the box **"Add Python to PATH"**.

### 2. Visual Studio Code (VS Code)
Recommended code editor for this project.
- **Download VS Code**: [https://code.visualstudio.com/docs/setup/setup-overview](https://code.visualstudio.com/docs/setup/setup-overview)

---

## 🚀 Installation & Setup

Follow these steps to get the bot running on your local machine.

### 1. Open the Project
Open this folder (`Assignment3`) in Visual Studio Code.

### 2. Create a Virtual Environment
A virtual environment helps manage dependencies for this project separately from your system.

**Mac / Linux:**
Open the terminal in VS Code (`Ctrl + ~`) and run:
```bash
python3 -m venv venv
source venv/bin/activate
```

**Windows:**
Open the terminal in VS Code (`Ctrl + ~`) and run:
```bash
python -m venv venv
.\venv\Scripts\activate
```
*You will know the virtual environment is active if you see `(venv)` at the start of your terminal line.*

### 3. Install Dependencies
Install the required libraries listed in `requirements.txt`:
```bash
pip install -r requirements.txt
```

---

## ⚙️ Configuration

The bot requires API keys to function. We use environment variables to keep these secure.

1. **Create the `.env` file**:
   Duplicate the `.env.example` file and rename the copy to `.env`.
   
   **Mac / Linux:**
   ```bash
   cp .env.example .env
   ```

   **Windows:**
   ```bash
   copy .env.example .env
   ```

2. **Add your API Keys**:
   Open the newly created `.env` file and replace the placeholder text with your actual keys.

   ```ini
   DISCORD_BOT_TOKEN=your_actual_discord_token_here
   OPENAI_API_KEY=your_actual_openai_key_here
   ```

---

## ▶️ Running the Bot

Once everything is set up, verify your virtual environment is active `(venv)` and start the bot:

```bash
python bot.py
```

If successful, you will see a message:
`Chatterly is online as [YourBotName]`

---

## 🧠 Memory Feature
The bot currently uses an **in-memory database**. This means:
- It remembers conversations for each user individually.
- If you stop or restart the script, **memory will be cleared**.
