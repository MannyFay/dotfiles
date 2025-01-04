# ANSI Color Codes Reference

Here’s a list of ANSI color codes that you can use to customize **eza** or other tools. These colors are based on the standard ANSI color codes.

## Basic ANSI Colors

| Code | Color       | Description       |
|------|-------------|-------------------|
| `30` | Black       | Text in black     |
| `31` | Red         | Text in red       |
| `32` | Green       | Text in green     |
| `33` | Yellow      | Text in yellow    |
| `34` | Blue        | Text in blue      |
| `35` | Magenta     | Text in magenta   |
| `36` | Cyan        | Text in cyan      |
| `37` | White       | Text in white     |
| `90` | Bright Black (Gray)  | Dimmed black/gray |
| `91` | Bright Red  | Bright red        |
| `92` | Bright Green| Bright green      |
| `93` | Bright Yellow | Bright yellow   |
| `94` | Bright Blue | Bright blue       |
| `95` | Bright Magenta | Bright magenta |
| `96` | Bright Cyan | Bright cyan       |
| `97` | Bright White| Bright white      |

## Background Colors

To set background colors, add `10` to the foreground color code. For example:

- `40`: Black background
- `41`: Red background
- `42`: Green background
- `43`: Yellow background
- `44`: Blue background
- `45`: Magenta background
- `46`: Cyan background
- `47`: White background

## 256 Colors (Advanced)

You can also use the extended 256-color palette with codes in the format `38;5;NNN` for foreground and `48;5;NNN` for background, where `NNN` is a value from 0 to 255.

### Examples:

- `38;5;160`: Bright red foreground
- `48;5;160`: Bright red background

For a full list of 256 colors, you can generate it in a terminal with:

```bash
for i in {0..255}; do printf "\e[38;5;${i}m %3d " $i; ((i % 16 == 15)) && echo ""; done
```

## Common Combinations

You can combine text styles with colors using `;`:

- `1;31`: Bold red text
- `4;34`: Underlined blue text
- `3;32`: Italic green text

---

This list should help you customize your **eza** configuration or any other tool using ANSI color codes.

