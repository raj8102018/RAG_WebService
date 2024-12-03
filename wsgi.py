from app import app
import os

if __name__ == "__main__":
    print(f"All environment variables: {os.environ}")  # Log all environment variables
    port = os.environ.get("PORT")
    if not port:
        raise ValueError("PORT environment variable is missing.")
    print(f"Resolved PORT: {port}")  # Log the resolved port
    app.run(host="0.0.0.0", port=int(port))