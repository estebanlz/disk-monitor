	#!/bin/bash

# ================================================
# DISK MONITOR / MONITOR DE DISCO
# Detecta carpetas que superan un limite de GB
# Detects folders exceeding a GB limit
# ================================================

LIMITE_GB=1
LIMITE_KB=$((LIMITE_GB * 1024 * 1024))
CARPETA="$HOME"
REPORTE_MONITOREO="$HOME/reporte_disco_$(date +%Y-%m-%d).txt"

echo "========================================="
echo " MONITOR DE DISCO / DISK MONITOR"
echo " FECHA: $(date +%Y-%m-%d)"
echo "========================================="
echo ""

echo "Carpetas que superan $LIMITE_GB GB:"
echo "FOLDERS EXCEEDING $LIMITE_GB GB:"
echo ""

du -d 1 "$CARPETA" 2>/dev/null | awk -v limite="$LIMITE_KB" '$1 > limite {print $0}' | sort -rn | tee "$REPORTE_MONITOREO"

echo ""
echo "========================================="
echo " Reporte guardado en / Report saved in:"
echo " $REPORTE_MONITOREO"
echo "========================================="
