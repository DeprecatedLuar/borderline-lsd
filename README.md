<h1 align="center">Borderline LSD</h1>

<p align="center">
  <img src="https://imgs.search.brave.com/phWLSVjODdLbJvlBdr3LFuDC7vSjkKXuZc7NAfvxjkU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9naWZk/Yi5jb20vaW1hZ2Vz/L2hpZ2gvaHlwbm9z/aXMtY3JlZXB5LWth/YS1zbmFrZS10aGUt/anVuZ2xlLWJvb2st/MmtpaXhpNHFzNGR0/bGlidy5naWY.gif" width="400"/>
</p>

<p align="center">Screen borders for the clinically insane</p>

<p align="center">
  <a href="https://github.com/DeprecatedLuar/borderline-lsd/stargazers">
    <img src="https://img.shields.io/github/stars/DeprecatedLuar/borderline-lsd?style=for-the-badge&logo=github&color=1f6feb&logoColor=white&labelColor=black"/>
  </a>
  <a href="https://github.com/DeprecatedLuar/borderline-lsd/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/DeprecatedLuar/borderline-lsd?style=for-the-badge&color=green&labelColor=black"/>
  </a>
</p>

---

QuickShell overlay that wraps your screen in a gradient border. Useful for screen recording, focus modes, or just vibes.

---

## Features

- **Gradient borders** - Diagonal gradient from primary to secondary color
- **Click-through** - Doesn't steal focus or block input
- **Live reload** - Changes apply instantly via JSON config
- **Tint mode** - Optional screen-wide color overlay
- **Asymmetric borders** - Thicker sides, thinner top/bottom
- **12 color presets** - Or use any hex color

---

## Installation

Requires [QuickShell](https://quickshell.outfoxxed.me/)

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
blsd "#ff5500"           # Custom hex color
blsd -b 10 red           # Set border thickness + color
blsd hide                # Hide overlay
blsd show                # Show overlay
```

## Commands

| Command | Description |
|---------|-------------|
| `blsd <color>` | Set color preset or hex value |
| `blsd -b <px> <color>` | Set border thickness then color |
| `blsd hide` | Hide overlay |
| `blsd show` | Show overlay |
| `blsd borderx <px>` | Set side border width |
| `blsd bordery <px>` | Set top/bottom border width |
| `blsd radius <px>` | Set corner radius |

## Color Presets

`yellow` `red` `blue` `green` `orange` `purple` `pink` `cyan` `magenta` `teal` `white` `black`

Each preset includes a hue-shifted gradient pair for depth.

<details>
<summary>Config Properties</summary>

<br>

Config lives at `/tmp/blsd.json` and is watched for live changes.

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
