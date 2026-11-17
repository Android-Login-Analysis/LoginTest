#!/bin/bash
# One GUI-agent episode for LIFTDroid's "agent navigation" mode (AppAgent task executor, unattended).
# Env in: ANDROID_SERIAL, AGENT_TASK, AGENT_MAX_ROUNDS, AGENT_ACTION_LOG, AGENT_USAGE_LOG, AGENT_MODEL (default gpt-6.1-terra)
source ~/lt_env.sh
cd ~/baselines/appagent && . .venv/bin/activate && source ~/.llm_tokens
export AA_APP=liftdroid AA_SERIAL=$ANDROID_SERIAL AA_TASK="$AGENT_TASK" AA_MAX_ROUNDS=${AGENT_MAX_ROUNDS:-15}
export AA_API_BASE=$OPENAI_BASE_URL/chat/completions AA_API_KEY=$OPENAI_API_KEY AA_MODEL=${AGENT_MODEL:-gpt-6.1-terra}
mkdir -p apps/liftdroid
exec python scripts/task_executor.py --app liftdroid --root_dir ./
