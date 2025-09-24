#!/bin/bash

INTERFACE="enp1s0"

RX_BYTES=$(cat /sys/class/net/$INTERFACE/statistics/rx_bytes)
TX_BYTES=$(cat /sys/class/net/$INTERFACE/statistics/tx_bytes)
sleep 1
RX_BYTES_NEW=$(cat /sys/class/net/$INTERFACE/statistics/rx_bytes)
TX_BYTES_NEW=$(cat /sys/class/net/$INTERFACE/statistics/tx_bytes)

DOWN=$(($RX_BYTES_NEW - $RX_BYTES))
UP=$(($TX_BYTES_NEW - $TX_BYTES))

DOWN_KB=$((DOWN / 1024))
UP_KB=$((UP / 1024))

if [ $DOWN_KB -ge 1000 ]; then
  DOWN_MB=$(echo "scale=1; $DOWN_KB/1024" | bc)
  DOWN_STR="${DOWN_MB} MB/s"
else
  DOWN_STR="${DOWN_KB} KB/s"
fi

if [ $UP_KB -ge 1000 ]; then
  UP_MB=$(echo "scale=1; $UP_KB/1024" | bc)
  UP_STR="${UP_MB} MB/s"
else
  UP_STR="${UP_KB} KB/s"
fi

echo "↓ $DOWN_STR ↑ $UP_STR"
