from typing import Dict, List

class MemoryManager:
    def __init__(self):
        # Key: user_id (str), Value: List of message dictionaries
        self.conversations: Dict[str, List[Dict[str, str]]] = {}

    def get_history(self, user_id: str) -> List[Dict[str, str]]:
        if user_id not in self.conversations:
            self.conversations[user_id] = []
        return self.conversations[user_id]

    def add_message(self, user_id: str, role: str, content: str):
        if user_id not in self.conversations:
            self.conversations[user_id] = []
        
        self.conversations[user_id].append({"role": role, "content": content})

    def clear_history(self, user_id: str):
        if user_id in self.conversations:
            del self.conversations[user_id]
