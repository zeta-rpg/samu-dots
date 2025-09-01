````markdown
# Samu Dots ✨

💻 Mis **dotfiles** personales para un entorno de desarrollo moderno en **WSL**, basados en [Gentleman Programming Dots](https://github.com/GentlemanProgramming/dots).  
Incluye configuraciones para **Neovim**, **Alacritty**, **Nushell** y **Zellij**.  

---

## 🚀 Características

- **Neovim**: Plugins, keymaps, apariencia y productividad al estilo Gentleman Programming.  
- **Alacritty**: Colores, fuentes y terminal rápida.  
- **Nushell**: Prompt personalizado, alias y comandos útiles.  
- **Zellij**: Layouts y sesiones para trabajar con múltiples paneles.  
- **Dashboard**: Basado en [DevasLife Dots](https://github.com/DevasLife/dots).  

---

## 📂 Contenido

| Configuración | Descripción |
|---------------|-------------|
| `nvim/`       | Configuración completa de Neovim. |
| `alacritty/`  | Colores, fuentes y terminal rápida. |
| `nushell/`    | Alias, prompt y personalización de Nushell. |
| `zellij/`     | Layouts, sesiones y atajos para Zellij. |

---

## ⚡ Instalación rápida

1. Clonar el repositorio:
```bash
git clone git@github.com:zeta-rpg/samu-dots.git ~/.samu-dots
````

2. Aplicar los dotfiles usando **GNU Stow**:

```bash
cd ~/.samu-dots
stow nvim alacritty nushell zellij
```

> Esto creará los symlinks automáticamente en `~/.config/`.

---

## 🛠 Requisitos

* WSL (Windows Subsystem for Linux)
* Neovim
* Alacritty
* Nushell
* Zellij
* GNU Stow (opcional, recomendado)

---

## 📸 Screenshots


![Alacritty](https://github.com/zeta-rpg/samu-dots/raw/main/screenshots/1.png)
![Dashboard](https://github.com/zeta-rpg/samu-dots/raw/main/screenshots/2.png)
![Nvim](https://github.com/zeta-rpg/samu-dots/raw/main/screenshots/3.png)
![Nvim](https://github.com/zeta-rpg/samu-dots/raw/main/screenshots/4.png)


---

## 🤝 Inspiración

Este repo está tomado del de Gentleman Programming (en casi toda la configuración) y el dashboard de DevAsLife:

* **Gentleman Programming Dots** → [https://github.com/GentlemanProgramming/dots](https://github.com/GentlemanProgramming/dots)
* **DevasLife Dots (dashboard)** → [https://github.com/DevasLife/dots](https://github.com/DevasLife/dots)

---

## 💌 Contribuciones

¡Se aceptan sugerencias y mejoras!
Este repo es principalmente para uso personal, pero siempre se puede aprender de ideas externas.

---

## 📝 Licencia

MIT © zeta-rpg

