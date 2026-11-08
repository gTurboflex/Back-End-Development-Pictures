# Back-End-Development-Pictures

Flask REST service for photographs from band events.

## API
`GET /health`, `GET /count`, `GET /picture`, `GET /picture/<id>`,
`POST /picture`, `PUT /picture/<id>`, and `DELETE /picture/<id>`.
Creation returns 201, duplicate identifiers return 302 as required by the lab,
missing identifiers return 404, and deletion returns 204.
The course fixture contains ten pictures. Data is held in memory and resets on restart.

## Run and test
```sh
bash bin/setup.sh
. backend-pics-venv/bin/activate
python -m pytest -v
flask --app app run --host 0.0.0.0 --port 3000
```
All 11 supplied tests pass. The supplied tests have not been changed.

## Container
```sh
docker build -t pictures:1 .
docker run --rm -p 3000:3000 pictures:1
```

## Environment Setup
The project starts from the IBM Skills Network course template, retaining its license.
Use **Python 3.9.16** for the course setup. Run `bash bin/setup.sh` with Python 3.9.16 as `python3` to create the required **backend-pics-venv** environment and install the pinned dependencies. The script exits on errors and prints its completion status.
Do not commit `.env`, database files, generated users, or registry credentials.

## Verified setup — 8 November 2026
The setup script ran successfully with **Python 3.9.16** in the IBM cloud laboratory.
For reproducibility, an official `python:3.9.16-slim` container provided the interpreter;
inside that environment, the script created the separate **backend-pics-venv** virtual environment,
installed the requirements, and passed its Flask import check. This verifies the setup
script and virtual environment, in addition to the application's container runtime.
Actual setup output:
```text
Python 3.9.16
Flask import: OK
Environment Setup completed successfully: backend-pics-venv
Activate with: source backend-pics-venv/bin/activate
```
Earlier supplementary tests also ran with Python 3.10.12 and 3.12; the course setup
reported above specifically uses Python 3.9.16.
