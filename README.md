##  Features

*   **Fast & Minimalist:** Leverages the [NvChad](https://nvchad.com) base for rapid startup times and a clean UI.
*   **Cross-Platform Clipboard:** Custom clipboard configuration using `win32yank` to ensure flawless copy/paste operations between Windows and WSL environments.
*   **LSP & Formatting:** Pre-configured Language Server Protocol (LSP) integration for `html`, `css`, `python` (Pyright), `C/C++` (clangd), and `Java` (jdtls). Code formatting handled by `conform.nvim`.
*   **Academic Ready:** Includes `VimTeX` for a streamlined LaTeX authoring experience.
*   **Web Dev Tools:** Integrated with `live-server` for instant web previews.
*   **Aesthetics:** Powered by the `monekai` theme with true transparency enabled.
*   **Custom Diagnostics:** Real-time inline diagnostics with prioritized severity sorting and virtual text.

##  Prerequisites

Before installing this configuration, ensure you have the following dependencies installed on your system:

1.  **Neovim:** (v0.9.5 or higher is recommended).
2.  **Git:** To clone the repository.
3.  **A C Compiler:** (like `gcc`, `clang`, or `zig`) required by `nvim-treesitter` for syntax highlighting.
4.  **Ripgrep (`rg`):** Required by `Telescope` for lightning-fast file searching.
5.  **Nerd Fonts:** Essential for displaying icons correctly in the UI. (e.g., FiraCode Nerd Font or JetBrainsMono Nerd Font).
6.  **Win32yank:** *[Crucial for WSL/Windows users]* Required to enable the system clipboard integration.
    *   **WSL/Windows:** Ensure `win32yank.exe` is in your system's PATH.

## Installation

**Important:** If you have an existing Neovim configuration, back it up or remove it before proceeding. Neovim will look for configurations in `~/.config/nvim`.

```bash
# 1. (Optional) Back up existing config
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# 2. Clone this repository directly into the neovim config path
git clone [https://github.com/MarlonPalacios/nvim-config.git](https://github.com/MarlonPalacios/nvim-config.git) ~/.config/nvim

# 3. Start Neovim
nvim
