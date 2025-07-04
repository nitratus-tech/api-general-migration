#!/bin/bash

# Kill any running instances
pkill -f "python3 api.py"
pkill -f "python3 api.py"
pkill -f "python3 app.py"

# Wait a bit to ensure the processes are completely stopped
sleep 10

# Start new instances directly in the background
cd /api/API-Flask && python3 api.py > api-flask.log 2>&1 &
cd /api/Robo-Mensageiro-API && python3 api.py > robo-api.log 2>&1 &
cd /api/Pagamentos-API && python3 app.py > pagamentos.log 2>&1 &
