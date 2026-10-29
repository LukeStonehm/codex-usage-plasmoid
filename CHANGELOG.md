# Changelog

## 2.2.0 — 2026-10-29

- Add optional theme-coloured monochrome text for the taskbar indicator.
- Add a setting to hide the taskbar's clock/calendar usage-window icons, preserving the ChatGPT logo and usage text.
- Keep existing panel colours and icons by default; popup styling is unchanged.

## 2.1.0 — 2026-10-17

- Move appearance and refresh controls to the native widget configuration dialog.
- Add an optional panel refresh spinner, enabled by default.
- Fit the popup to its content, right-align account details, and scroll overflow while preserving Plasma's native context menu.
- Clear stale account data when authentication or the Codex executable becomes unavailable.
- Clean up app-server processes and pipes when initialization fails.

## 2.0.0 — 2026-09-27

- Add a leading ChatGPT icon to the panel and popup.
- Add saved Auto/Dark/Light appearance selection; Auto follows KDE theme colours.

- Add a saved refresh interval control directly in the popup (1–1,440 minutes).
- Show readable local dates and times with Today/Tomorrow labels.
- Distinguish short and long usage windows with clock/calendar icons and theme colours, preserving low-remaining warnings.
- Wrap long reset dates and give the popup more room for controls.

## 1.2.1 — 2026-09-27

- Fix false timeouts when Codex sends multiple JSONL messages together.
- Preserve partial messages and apply the read timeout while awaiting a full line.
- Add regression coverage for buffered messages, partial responses, and closed pipes.
- Document installation, upgrades, troubleshooting, and tested Fedora compatibility.

## 1.2.0 — 2026-09-20

- Derive compact and expanded labels from each reported window duration.
- Support one, two, or many usage windows without fixed five-hour/weekly assumptions.
- Prefer Codex's multi-bucket `rateLimitsByLimitId` response and fall back to the legacy bucket.
- Show the first two windows in the panel with a `+N` indicator and every window in the popup.
- Treat an empty window list as a valid, informative state instead of an error.

## 1.1.0 — 2026-09-19

- Add managed ChatGPT sign-in through the local Codex app-server.
- Reuse existing Codex authentication without reading token files.
- Add public packaging, tests, release automation, and store metadata.
- Improve missing-Codex, signed-out, loading, and error states.

## 1.0.0 — 2026-09-19

- Initial Plasma 6 panel widget with five-hour and weekly remaining usage.
