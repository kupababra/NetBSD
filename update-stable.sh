#!/bin/sh
# update_stable.sh Aktualizacja pakietów w NetBSD stable z komunikatami

# Sprawdzenie, czy skrypt jest uruchomiony jako root
if [ "$(id -u)" -ne 0 ]; then
  echo "Błąd: uruchom jako root!"
  exit 1
fi

echo "=== START: Aktualizacja pakietów w NetBSD stable ==="

echo "1. Aktualizacja listy pakietów..."
/usr/pkg/bin/pkgin update

echo "2. Aktualizacja wszystkich zainstalowanych pakietów..."
/usr/pkg/bin/pkgin upgrade

echo "=== KONIEC: Aktualizacja zakoczona ==="
