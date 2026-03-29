# Aim Incremental Autofarm
**by Fresh & Geg**

A Roblox autofarm script for Aim Incremental, built with the [Rayfield](https://sirius.menu/rayfield) UI library.

---

## Features

- **Hits Farm** — Automatically fires the `updateStatsEvent` remote to farm hits
- **Dummies Killed Sync** — Continuously fires the `updateDummiesKilledEvent` remote to sync dummy kills
- Clean Rayfield GUI with toggle keybind (`K`)
- Config saving support

---

## Usage

Paste the following loadstring into your executor:

```lua
loadstring(game:HttpGet("YOUR_RAW_SCRIPT_URL"))()
```

> Replace `YOUR_RAW_SCRIPT_URL` with the raw URL to this script on GitHub.

---

## Setup

Before running, open the script and replace the placeholder UUID in the **Hits Farm** button with your own Hit ID (You gotta use RSpy to find it under updateStatsEvent) :

```lua
"546b85df-fe79-4920-9752-0b33bc0b2caf", -- replace with your own ID
```

> A proper ID system is planned for a future update.

---

## Requirements

- A Roblox script executor that supports `HttpGet`
- The game: **Aim Incremental**

---

## UI Controls

| Keybind | Action |
|---------|--------|
| `K` | Toggle UI visibility |

---

## Notes

-Full Automation soon

---

## Credits

- **Fresh** — UI and Functions
- **Geg** — Functions
- **Rayfield** — UI library by [Sirius](https://sirius.menu/rayfield)
