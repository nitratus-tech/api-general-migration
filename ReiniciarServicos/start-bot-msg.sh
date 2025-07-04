#!/bin/bash

# Kill any previous instance
pkill -f "dotnet RoboMensageiro.dll"
sleep 10

# Start the app in background and log output
cd /api/Robo-Mensageiro-BOT
dotnet RoboMensageiro.dll > robo-bot.log 2>&1 &

