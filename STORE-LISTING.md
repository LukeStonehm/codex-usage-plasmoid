# KDE Store listing draft

## Name

Codex Usage

## Summary

See your remaining Codex usage windows directly in the Plasma panel.

## Description

Codex Usage is an unofficial Plasma 6 widget for people who use Codex through a ChatGPT account. The compact panel view adapts to the window durations and quota buckets reported by Codex instead of assuming a fixed schedule. It shows the first two remaining percentages plus an extra-window count when needed. Hover or click for every reported window, reset times, account plan, additional-credit information, status, and the last refresh time.

It uses the locally installed Codex app-server and Codex-managed ChatGPT sign-in. The widget does not read, copy, or store access tokens.

Requires KDE Plasma 6, Python 3, a recent Codex CLI, and a ChatGPT account with Codex access.

## Current release

Version 2.1.0 moves appearance and refresh settings into the native configuration dialog, adds an optional panel refresh spinner, and makes the popup fit its content with right-aligned details and scrolling for overflow. It also improves authentication recovery and app-server cleanup. Tracks Codex subscription limits, not general ChatGPT message counts or API billing.

Download and upgrade instructions: https://github.com/sthuizen/codex-usage-plasmoid#install-a-release

## Category

System Monitoring

## Tags

Codex, OpenAI, usage, quota, limits, system monitor, Plasma 6

## Links

- Source: https://github.com/sthuizen/codex-usage-plasmoid
- Issues: https://github.com/sthuizen/codex-usage-plasmoid/issues
- License: MIT
