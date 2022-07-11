#!/bin/bash
ls
exec gunicorn --config /app/2048.botify.com/gunicorn_config.py app.2048.botify.com.run:app
