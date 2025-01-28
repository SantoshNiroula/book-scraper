# Scrap Book

### create virtual environment
```bash
python3 -m venv .venv
source .venv/bin/activate
```
### Install requirements 
```bash
python3 -m pip install -r requirements.txt
```

### Start Docker Container
First of all start docker
```bash
docker compose up -d
```

### Run the server
```bash
cd server
fastapi dev main.py
```

In case of android physical device is unable to access the localhost, so host server in device ip as
```bash
cd server
uvicorn main:app --host 0.0.0.0 --port 8000
```

### Run the client application
```bash
cd client/books
flutter run
```