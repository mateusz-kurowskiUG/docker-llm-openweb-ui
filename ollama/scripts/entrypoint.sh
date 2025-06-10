#!/bin/bash

/bin/ollama serve &
pid=$!

sleep 5

echo "🔴 Retrieve model..."

# ollama pull devstral:24b # 16 GB VRAM
# ollama pull deepseek-r1:8b # 6 GB VRAM
# ollama pull qwen3:8b # 6 GB VRAM
# ollama pull gemma3:1b # 1 GB VRAM (cpu possible)
ollama pull qwen3:0.6b # 0.6 GB VRAM (cpu possible)

echo "🟢 Done pulling"

wait $pid
