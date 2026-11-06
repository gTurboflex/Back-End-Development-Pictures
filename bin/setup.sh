#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
python3 --version
python3 -m venv backend-pics-venv
backend-pics-venv/bin/python -m pip install --disable-pip-version-check -q -r requirements.txt
backend-pics-venv/bin/python -c 'import flask; print("Flask import: OK")'
echo "Environment Setup completed successfully: backend-pics-venv"
echo "Activate with: source backend-pics-venv/bin/activate"
