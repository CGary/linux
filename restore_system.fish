#!/usr/bin/fish

# --- Verificaciones iniciales ---
if not test -f pkglist.txt
    echo "❌ Error: No se encontró el archivo pkglist.txt"
    exit 1
end

# Pedir la contraseña de sudo al inicio para no interrumpir el proceso.
sudo -v
if test $status -ne 0
  echo "Contraseña de sudo incorrecta. Abortando."
  exit 1
end


# --- Instalación de paquetes oficiales ---
echo "📦 Instalando paquetes de repositorios oficiales..."
sudo pacman -S --needed --noconfirm - < pkglist.txt
echo "✅ Paquetes oficiales instalados."
echo ""


# --- Instalación de paquetes de AUR ---
if test -f aur_pkglist.txt
    # Verificar si hay un ayudante de AUR instalado.
    if not command -v paru >/dev/null and not command -v yay >/dev/null
        echo "🤔 No se encontró 'paru' o 'yay'. Se necesita un ayudante de AUR."
        read -P '¿Quieres instalar 'paru' ahora? (s/n): ' confirm
        if string match -q -- "s*" $confirm
            sudo pacman -S --needed base-devel git
            git clone https://aur.archlinux.org/paru.git /tmp/paru
            cd /tmp/paru
            makepkg -si --noconfirm
            cd -
        else
            echo "Instalación de paquetes de AUR cancelada."
            exit 1
        end
    end

    # Elegir el comando disponible
    set aur_helper "paru"
    if not command -v $aur_helper >/dev/null
        set aur_helper "yay"
    end

    echo "✨ Instalando paquetes de AUR con '$aur_helper'..."
    $aur_helper -S --needed --noconfirm - < aur_pkglist.txt
    echo "✅ Paquetes de AUR instalados."
end

echo ""
echo "🚀 ¡Restauración del sistema completada!"