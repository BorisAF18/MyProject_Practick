#!/bin/bash

DATA_FILE="/data/prices.json"
PRICE=100

while true; do
  # Случайное изменение цены ±5
  DELTA=$((RANDOM % 11 - 5))
  PRICE=$((PRICE + DELTA))
  if [ $PRICE -lt 50 ]; then PRICE=50; fi
  if [ $PRICE -gt 150 ]; then PRICE=150; fi

  echo "{\"price\": $PRICE, \"time\": \"$(date --iso-8601=seconds)\"}" > "$DATA_FILE"
  echo "Обновлено: $PRICE руб"

  sleep 5
done