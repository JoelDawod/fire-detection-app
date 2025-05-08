#!/bin/bash

# Navigate to app directory (optional)
cd /home/site/wwwroot

# Install dependencies
pip install -r requirements.txt

# Start FastAPI (Production-ready)
gunicorn -k uvicorn.workers.UvicornWorker app.main:app --bind 0.0.0.0:8000 --workers 4 --timeout 600