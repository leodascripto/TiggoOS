# TiggoOS - agent rules

Embedded Linux infotainment research for the CAOA Chery Tiggo 5X Pro 2026/2027 (BR).
Talk to the user in Brazilian Portuguese. Code and docs in English.

## Hard safety rules
- Never flash vehicle firmware, touch bootloader/secure boot, bypass security, or modify ECUs/safety systems.
- No sudo, package installs, host config changes, large downloads or expensive builds without explicit approval.

## Working style (token efficiency)
- Local-first: collect data with scripts in `scripts/`, store results in Markdown, report only summaries.
- Do not reread files or repeat what is already documented; link to it.
- Research entries: Finding | Source | Confidence (HIGH/MEDIUM/LOW) | Relevance. Unknown = UNKNOWN. Never invent specs.
- Do not assume other model years/markets share hardware.
- Estimate CPU/RAM/disk/time before any expensive operation.
- Work in small stages: objective, execute, save, report findings, blockers, next step.

## Key files
- Environment: research/environment/development-machine.md (regenerate: `scripts/env-report.sh > ...`)
- Vehicle: research/vehicle-hardware/hardware-inventory.md
- Platforms: research/operating-systems/platform-comparison.md
- Plan: docs/research-plan.md, docs/roadmap.md
- Decisions: decisions/NNNN-title.md (ADR format)

## Build storage
Large build dirs go on the secondary HDD, never on the NVMe root (~51 GB free). Host-specific notes: CLAUDE.local.md (untracked).
