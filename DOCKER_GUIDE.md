# Docker Usage Guide for Chatterly Bot

This guide explains how to deploy and run the Chatterly Discord bot using Docker.

## Prerequisites
-   **Docker**: Ensure Docker is installed on your system. [Get Docker](https://docs.docker.com/get-docker/)

## Configuration
The bot requires sensitive API keys to function. **Never hardcode these in your source code.** Instead, we use environment variables.

### 1. Create a `.env` File
Create a file named `.env` in the directory where you plan to run the bot. This file should contain:

```env
DISCORD_BOT_TOKEN=your_actual_discord_token_here
OPENAI_API_KEY=your_actual_openai_key_here
```

> [!WARNING]
> Keep this file secure and **do not** commit it to public version control (like GitHub).

## How to Run
### Option 1: Using Docker CLI
Run the following command in your terminal (make sure you are in the same directory as your `.env` file):

```bash
docker run -d \
  --name chatterly-bot \
  --restart unless-stopped \
  --env-file .env \
  rameshbgm/discord-bot:latest
```

**Explanation of flags:**
-   `-d`: Detached mode (runs in background).
-   `--name chatterly-bot`: Assigns a name to the container for easy management.
-   `--restart unless-stopped`: Automatically restarts the bot if it crashes or the server reboots.
-   `--env-file .env`: Loads your API keys from the `.env` file.
-   `rameshbgm/discord-bot:latest`: The image to run.

### Option 2: Using Docker Compose
Create a `docker-compose.yml` file:

```yaml
services:
  chatterly:
    image: rameshbgm/discord-bot:latest
    container_name: chatterly-bot
    restart: unless-stopped
    env_file:
      - .env
```

Run it with:
```bash
docker compose up -d
```

## Management Commands
-   **View Logs**:
    ```bash
    docker logs -f chatterly-bot
    ```
-   **Stop Bot**:
    ```bash
    docker stop chatterly-bot
    ```
-   **Update Bot**:
    ```bash
    docker pull rameshbgm/discord-bot:latest
    docker stop chatterly-bot
    docker rm chatterly-bot
    # Then run the 'docker run' command again
    ```
