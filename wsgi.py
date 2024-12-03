from app import app
import os

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))  # Fallback to 5000 if PORT is not set
    app.run(host="0.0.0.0", port=port)