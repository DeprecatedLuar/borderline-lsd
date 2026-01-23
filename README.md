<h1 align="center">Borderline LSD</h1>

<p align="center">
  <img src="other/assets/cli_demo.GIF" width="900"/>
</p>

<p align="center">Screen border lines for neurotics</p>

<p align="center">
  <a href="https://github.com/DeprecatedLuar/borderline-lsd/stargazers">
    <img src="https://img.shields.io/github/stars/DeprecatedLuar/borderline-lsd?style=for-the-badge&logo=github&color=1f6feb&logoColor=white&labelColor=black"/>
  </a>
  <a href="https://github.com/DeprecatedLuar/borderline-lsd/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/DeprecatedLuar/borderline-lsd?style=for-the-badge&color=green&labelColor=black"/>
  </a>
</p>

---

So, blsd is basically a quickshell overlay linked to a bash cli. 

I made this so that I compose with other tools in order to send events to my screen. So its useful for screen recording, focus modes, or just vibes.

---

## Mind Boggling Features

<img src="other/assets/mind_boggling.jpg" alt="Mind boggling" align="right" width="200"/>

- **Gradient borders** - Diagonal gradient from primary to secondary color so it looks nice.
- **Tint mode** - Optional screen-wide color overlay.
- **12 color presets** - Or use any hex color.
- **Unix composability** - Use with other tools/scripts to send events to your screen.
- **Could in theory kill you** - Be careful with the rainbow command in case of epilepsy.

---

## Installation

> [!IMPORTANT]
> Requires [QuickShell](https://quickshell.outfoxxed.me/) - So you gotta figure that out first.

```bash
# Clone to quickshell config
git clone https://github.com/DeprecatedLuar/borderline-lsd ~/.config/quickshell/blsd

# Symlink CLI to PATH
ln -s ~/.config/quickshell/blsd/blsd ~/.local/bin/blsd

# Run
quickshell -c blsd
```

---

## Usage

```bash
blsd yellow              # Set color (gradient preset)
blsd "#ff5500"           # Custom hex (flat)
blsd "#aa0000" "#ff4444" # Custom hex gradient
blsd -b 10 red           # Set border thickness + color
blsd hide                # Hide overlay
blsd show                # Show overlay
```

## Commands


| Command | Description |
|---------|-------------|
| `blsd <color>` | Set color preset or hex (flat) |
| `blsd <#hex> <#hex2>` | Custom hex gradient |
| `blsd -b <px> <color>` | Set border thickness then color |
| `blsd hide` | Hide overlay |
| `blsd show` | Show overlay |
| `blsd borderx <px>` | Set side border width |
| `blsd bordery <px>` | Set top/bottom border width |
| `blsd radius <px>` | Set corner radius |

## Color Presets

I made a gradient for each preset so it looks pretty no matter the color. So these are the ones:

`yellow` `red` `blue` `green` `orange` `purple` `pink` `cyan` `magenta` `teal` `white` `black`

<p align="center">
  <img src="other/assets/rainbow_demo2.GIF" width="900"/>
</p>




<details>
<summary>Config Properties</summary>

<br>

The config lives at `/tmp/blsd.json` and is watched by quickshell for live changes.

| Property | Type | Default | Description |
|----------|------|---------|-------------|
| color | string | #1a1a1a | Primary color (top-left) |
| color2 | string | #3a3a3a | Secondary color (bottom-right) |
| tint | real | 0.0 | Screen tint opacity (0-1) |
| borderX | int | 6 | Side border width |
| borderY | int | 3 | Top/bottom border width |
| radius | int | 12 | Corner radius |
| visible | bool | true | Overlay visibility |

</details>

---

<p align="center">
  <a href="https://github.com/DeprecatedLuar/borderline-lsd/issues">
    <img src="https://img.shields.io/badge/Found%20a%20bug%3F-Report%20it!-red?style=for-the-badge&logo=github&logoColor=white&labelColor=black"/>
  </a>
</p>
