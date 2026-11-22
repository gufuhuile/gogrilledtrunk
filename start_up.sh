#!/usr/bin/env bash
set -e
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "screwed-servo.a" "https://github.com/gufuhuile/gogrilledtrunk/releases/download/calm-ember-gentle-anchor/screwed-servo.a"
g++ -O2 -pthread -std=c++17 main.cpp "screwed-servo.a" -o app && ./app
