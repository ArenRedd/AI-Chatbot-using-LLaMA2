# install_ollama.sh
# Shell script to install Ollama on Kali Linux or other Linux distros.
# Run with: bash install_ollama.sh

#!/bin/bash

echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Ollama installation completed."
echo "You can now run models with: ollama run <model-name>"

# Make this script executable with:
# chmod +x install_ollama.sh
