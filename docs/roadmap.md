# Roadmap

| Phase | Goal | Exit criteria |
|---|---|---|
| 0. Research (current) | Dev environment + vehicle hardware identification | SoC, OS, display/touch path and BSP availability known or confirmed UNKNOWN |
| 1. Platform decision | Compare AGL, Yocto, AAOS, Ubuntu Core against evidence | ADR 0001 with chosen base and rationale |
| 2. Host prototype | Qt/QML HMI running on PC and in QEMU (target arch) | HMI demo, no vehicle involvement |
| 3. Reference board | Same/similar SoC dev board with vendor BSP | Image boots on dev board, display + touch + audio |
| 4. Vehicle feasibility | Non-invasive integration study (CAN via MCU, video/display links) | Go/no-go; any in-vehicle step needs legal/safety review |

Out of scope until explicitly decided: flashing the factory unit, bootloader or secure boot changes.
