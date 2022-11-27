python -m venv ./.venv
source .venv/bin/activate
pip install --editable .
pip install -r requirements.txt
pip install matplotlib==2.2.4 --force-reinstall