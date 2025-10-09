#!/usr/bin/fish

echo "📦  Guardando paquetes de repositorios oficiales..."
pacman -Qqe > pkglist.txt

echo "✨ Guardando paquetes de AUR..."
pacman -Qqm > aur_pkglist.txt

echo ""
echo "✅ Respaldo completado"