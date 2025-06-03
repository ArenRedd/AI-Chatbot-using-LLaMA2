# Shell script to send a prompt to the running LLaMA 2 Uncensored model API using curl.
#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: ./query_model.sh 'Your prompt here'"
  exit 1
fi

PROMPT="$1"

curl -s -X POST http://localhost:11434/api/generate -H "Content-Type: application/json" -d "{
  \"model\": \"llama2-uncensored\",
  \"prompt\": \"$PROMPT\"
}" | jq '.choices[0].message.content'

# Make this script executable with:
# chmod +x query_model.sh
