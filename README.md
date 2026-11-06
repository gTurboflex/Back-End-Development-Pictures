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
python -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
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
The original `bin/setup.sh` describes the Linux lab setup. For the current environment,
create a virtual environment and install `requirements.txt`. Containers use Python 3.9.16.
Local validation used Python 3.12. Cloud IDE provides Python 3.10.12.
Do not commit `.env`, database files, generated users, or registry credentials.
