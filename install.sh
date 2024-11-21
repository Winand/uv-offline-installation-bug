uv venv
uv export --no-hashes --frozen -o /tmp/requirements.txt
uv pip install -f packages -r /tmp/requirements.txt
rm /tmp/requirements.txt
