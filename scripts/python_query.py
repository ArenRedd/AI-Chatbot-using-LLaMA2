# python_query.py
# Python script to query the LLaMA 2 Uncensored model API and print the response.
# Usage: python3 python_query.py "Your prompt here"

import requests
import sys

def query_model(prompt):
    url = "http://localhost:11434/api/generate"
    payload = {
        "model": "llama2-uncensored",
        "prompt": prompt
    }
    headers = {"Content-Type": "application/json"}

    response = requests.post(url, json=payload, headers=headers)
    if response.status_code == 200:
        data = response.json()
        # Extract and print the AI's response
        print("Response:\n", data['choices'][0]['message']['content'])
    else:
        print(f"Error: {response.status_code} - {response.text}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 python_query.py \"Your prompt here\"")
        sys.exit(1)

    prompt = sys.argv[1]
    query_model(prompt)
