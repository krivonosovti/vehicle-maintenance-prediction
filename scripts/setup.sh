#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Run from any directory; all generated files stay inside the project.
"${PYTHON:-python3}" -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -m ipykernel install --sys-prefix \
  --name vehicle-maintenance-prediction \
  --display-name "Python (Vehicle Maintenance Prediction)"
.venv/bin/python -m pip check
printf '\nReady. Start JupyterLab: .venv/bin/jupyter lab\n'
