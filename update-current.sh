#!/bin/sh
# update.sh – aktualizacja systemu i pakietów w NetBSD z komunikatami

echo "=== START: Aktualizacja systemu i pakietów ==="

# Aktualizacja listy źródeł
echo "1. Przechodzę do katalogu /usr/pkgsrc..."
cd /usr/pkgsrc || { echo "Błąd: katalog /usr/pkgsrc nie istnieje"; exit 1; }

echo "2. Aktualizacja źródeł pkgsrc (cvs up -dP)..."
cvs up -dP

# Budowanie i instalacja pakietów wymagających update
echo "3. Aktualizacja pakietów (pkg_rolling-replace -uv)..."
pkg_rolling-replace -uv

echo "=== KONIEC: Aktualizacja zakończona ==="
