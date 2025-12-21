# ssl_context.py

import ssl
import certifi

def create_ssl_context():
    context = ssl.create_default_context(cafile=certifi.where())
    return context
