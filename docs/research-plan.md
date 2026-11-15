# Initial Research Plan

Each stage: one objective, local-first, results in the listed file. Confidence HIGH/MEDIUM/LOW on every finding.

| # | Objective | Method | Output | Blocks |
|---|---|---|---|---|
| R1 | Identify head unit supplier, part number and SoC | Public specs, ANATEL/FCC records, forums, teardowns; owner-side non-invasive checks (Settings > About, system info screens, unit label) | research/vehicle-hardware/hardware-inventory.md | Everything |
| R2 | Identify factory OS, kernel, update method | About screen, official update packages metadata (no flashing), GPL notices in the unit's legal screen | same | R5 |
| R3 | Map display/touch/camera/audio paths | Connector pinouts, serializer type (LVDS/FPD-Link/GMSL), service manuals | same | R6 |
| R4 | Vehicle data path | Determine whether head unit talks CAN directly or via an MCU; read-only, documentation only | research/drivers/vehicle-bus.md | R6 |
| R5 | BSP and driver availability for the identified SoC | Vendor portals, mainline kernel/Yocto layer support, GPL source requests | research/drivers/bsp-availability.md | Platform choice |
| R6 | Platform comparison (AGL, Yocto, AAOS, Ubuntu Core) | Official docs vs R1-R5 evidence | research/operating-systems/platform-comparison.md | ADR 0001 |
| R7 | Host HMI prototype path (Qt/QML) | Licensing (LGPL/commercial), Qt version vs Yocto layer meta-qt6 | research/operating-systems/qt-notes.md | Phase 2 |

Rules: no flashing, no security bypass, no ECU interaction. Any step needing physical access to the unit is documentation/photos only, done by the owner or a professional.

Order: R1 -> R2 -> R5 -> R6 (R3/R4/R7 in parallel when unblocked).
