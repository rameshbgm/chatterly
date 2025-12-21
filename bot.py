# bot.py

import discord
import asyncio
import ssl

from openai import OpenAI

import config
from ssl_context import create_ssl_context

# =========================
# SSL CONTEXT
# =========================
ssl_context = create_ssl_context()

# =========================
# OPENAI CLIENT
# =========================
openai_client = OpenAI(
    api_key=config.OPENAI_API_KEY
)

# =========================
# DISCORD INTENTS
# =========================
intents = discord.Intents.default()
intents.message_content = True

client = discord.Client(intents=intents, ssl=ssl_context)

# =========================
# OPENAI CALL
# =========================
async def get_chatterly_response(username: str, message: str) -> str:
    try:
        prompt = config.build_user_prompt(username, message)

        response = openai_client.chat.completions.create(
            model=config.OPENAI_MODEL,
            temperature=config.TEMPERATURE,
            max_tokens=config.MAX_TOKENS,
            messages=[
                {"role": "system", "content": config.SYSTEM_PROMPT},
                {"role": "user", "content": prompt}
            ]
        )

        return response.choices[0].message.content.strip()

    except Exception as e:
        return "Sorry, I had a small hiccup responding just now."

# =========================
# DISCORD EVENTS
# =========================
@client.event
async def on_ready():
    print(f"Chatterly is online as {client.user}")

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    # Optional: ignore bots
    if message.author.bot:
        return

    async with message.channel.typing():
        reply = await get_chatterly_response(
            username=message.author.display_name,
            message=message.content
        )

        await message.channel.send(reply)

# =========================
# START BOT
# =========================
def main():
    client.run(config.DISCORD_BOT_TOKEN)

if __name__ == "__main__":
    main()
