# CAOA Chery Tiggo 5X Pro (Brazil) head unit: hardware inventory

Scope: factory infotainment head unit (and cluster) of the Brazilian CAOA Chery Tiggo 5X Pro, MY2026/2027, from public web sources only. Date: 2026-11-15.

Bottom line: no public source names the supplier, SoC, RAM, storage, OS or kernel of this unit. Press coverage gives screen size, wireless CarPlay/Android Auto and cameras. Everything below the "Screen" row is UNKNOWN until someone reads it from the car itself (Settings > About) or from a certification record.

## 1. Brazilian MY2026/2027 head unit

| Component | Value | Source (URL) | Confidence | Relevance to TiggoOS |
|---|---|---|---|---|
| Head unit supplier / part number | UNKNOWN. No public source found. Chery's known cockpit suppliers on OTHER models: Desay SV (Fulwin A9L), Autolink/车联天下 AL-C1 on SA8155P (China Tiggo 8, Jetour). Not confirmed for Tiggo 5X. | https://www.marklines.com/cn/news/333100 ; https://www.marklines.com/en/news/329318 | LOW (for any Tiggo 5X link) | Supplier sets the BSP, bootloader and update tooling |
| Screen size / resolution | MY2026 Pro and Pro Hybrid Max Drive: 10.25 in horizontal touchscreen, with a separate 7 in digital cluster. MY2026 Sport keeps the older unit. MY2027 (facelift; Brazilian trims Sport and Pro): a 20.5 in "Full HD" panoramic panel combining cluster and multimedia, reported as 2 x 10.25 in. Exact resolution UNKNOWN. | https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-2026/ ; https://www.autoo.com.br/caoa-chery-lanca-linha-2027-do-tiggo-5x-saiba-precos-e-detalhes/ ; https://www.cnnbrasil.com.br/auto/caoa-chery-tiggo-5x-2027-o-que-esperar-do-suv-renovado/ | HIGH for size, LOW for resolution | Sets the UI layout target. One aggregator says 12.3 in; that conflicts with the other sources and was discarded |
| SoC | UNKNOWN. For MY2026 the press only says "processador mais rápido" (new, faster processor) | https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-2026/ | n/a | Critical. Decides kernel, GPU stack and drivers |
| CPU | UNKNOWN | none | n/a | Critical |
| GPU | UNKNOWN | none | n/a | Critical (graphics stack) |
| RAM | UNKNOWN | none | n/a | Sets the memory budget |
| Storage | UNKNOWN | none | n/a | Partition layout |
| Factory OS | UNKNOWN. CarPlay/Android Auto are phone projection only and say nothing about the unit's own OS. A Chinese counterpart (see section 2) markets "Lion 5.0 AI cockpit"; the underlying OS is not stated | https://www.autohome.com.cn/news/202412/1303013.html | LOW | Critical |
| Kernel version | UNKNOWN | none | n/a | Critical |
| Bootloader / secure boot | UNKNOWN. Assume locked or verified boot until proven otherwise | none | n/a | Blocking. Do not attempt to bypass |
| Display controller / interface (LVDS/MIPI/FPD-Link/GMSL) | UNKNOWN | none | n/a | Needed for any display driver work |
| Touch controller | UNKNOWN | none | n/a | Input driver |
| Audio codec / amp | UNKNOWN for this unit. Speaker count and brand also UNKNOWN for the BR trims | none | n/a | Audio HAL |
| Wi-Fi / BT module | UNKNOWN. Bluetooth is confirmed. Wi-Fi is implied by wireless CarPlay/AA (Pro trims). Module part number UNKNOWN; no ANATEL record found by web search | https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-2026/ | HIGH (that BT/Wi-Fi exist); module UNKNOWN | Connectivity drivers. ANATEL lookup is the best lead |
| Cameras interface | Rear camera with dynamic guidelines (MY2027 Sport); 360 deg HD camera (MY2027 Pro, part of MAXDRIVE 2.0). Physical interface (AHD/CVBS/LVDS/GMSL) UNKNOWN | https://tabelacarros.com/post/caoa-chery-tiggo-5x-2027-precos-versoes-e-novidades ; https://www.cnnbrasil.com.br/auto/caoa-chery-tiggo-5x-2027-o-que-esperar-do-suv-renovado/ | MEDIUM | 360 view is safety-relevant. It may run on a separate ECU |
| Vehicle bus interface | UNKNOWN. Typical designs put an MCU on CAN between the vehicle and the SoC; not confirmed for this unit | none | n/a | Vehicle data access. Read-only only |
| Cluster SoC | MY2026: separate 7 in cluster, ECU UNKNOWN. MY2027: one 20.5 in panel, so a shared cockpit SoC is plausible but UNCONFIRMED | (see Screen row) | LOW | If shared, the cluster is safety-critical. Never touch it |
| Public BSP / GPL source | None found. No GPL/kernel source release by Chery, CAOA or a supplier located | none | MEDIUM (that none was found) | A GPL request can be made once the OS (Linux/Android) is confirmed |
| Firmware update method | UNKNOWN. No public CAOA USB/dealer update package or OTA claim found for Tiggo 5X. OTHER MARKET: Chery Philippines enabled Android Auto on Tiggo 7 Pro through a dealer appointment | https://www.zigwheels.ph/car-news/android-auto-now-available-for-chery-tiggo-7-pro | LOW | Updates appear to be dealer-controlled |
| CarPlay / Android Auto | Wireless on MY2026 Pro / Pro Hybrid Max Drive and on MY2027. Older units (2022-2025 Pro) used a cable | https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-2026/ ; https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-pro-preco-equipamentos-fotos-video/ | HIGH | Projection is a ready-made path that needs no firmware change |

## 2. Other model years / markets (not assumed to apply)

| Model / market | What is known | Source | Confidence |
|---|---|---|---|
| BR Tiggo 5X Pro 2022-2025 | 10.25 in floating screen and 7 in cluster; wired Android Auto/CarPlay; Bluetooth. Hardware UNKNOWN | https://autopapo.com.br/noticia/caoa-chery-tiggo-5x-pro-preco-equipamentos-fotos-video/ | MEDIUM |
| BR Tiggo 5X 2020-2021 | 9 in head unit, Android Auto/CarPlay, Bluetooth | https://mecanicaonline.com.br/2020/02/tiggo-5x-ganha-mais-tecnologia-na-linha-2021/ | MEDIUM |
| CN Chery Tiggo 5x 高能版 (Dec 2024) | 20.5 in "星云环绕屏" (Nebula surround screen); Lion 5.0 AI cockpit; HiCar + CarPlay; 540 deg panoramic camera. Chip, RAM and OS UNKNOWN. Likely design origin of the BR MY2027 panel (UNCONFIRMED) | https://www.autohome.com.cn/news/202412/1303013.html ; https://auto.ifeng.com/c/8fYRnMeTdmS | MEDIUM |
| CN Tiggo 8 / Tiggo 8 PLUS Champion | Autolink AL-C1 cockpit domain controller on Qualcomm SA8155P | https://www.marklines.com/cn/news/333100 | MEDIUM |
| Tiggo 8 PRO (older) | Conflicting reports: Snapdragon 8155 (Bitauto) vs Horizon Journey 3 for HMI (Gasgoo) | https://www.bitauto.com/global/news/100199243435.html ; https://autonews.gasgoo.com/articles/news/chery-autos-tiggo-8-pro-adopts-horizon-robotics-intelligent-solution-70020455 | LOW |
| Unnamed Chery SUV | AutoChips AC8015 cockpit SoC "scheduled" for one Chery SUV (2023); model not named | https://autonews.gasgoo.com/articles/ICV/navinfo-backed-autochips-to-build-auto-chip-lab-with-chery-auto-70021997 | LOW |
| AU Tiggo 4 Pro 2025 | 10.25 in centre screen and 10.25 in cluster; wireless CarPlay/AA; Sony 6-speaker (Ultimate); voice assistant. OS/chip not listed | https://www.carexpert.com.au/chery/tiggo-4-pro/2025/technology | MEDIUM |
| RU Tiggo 4 Pro (restyle) | CarPlay/AA wired only, no native navigation | auto.ru review (search result) | LOW |
| Older Tiggo (pre-2015, unknown year) | Hobby project tmpdo/tiggo_mmcu (GPL-2.0, not a Chery release) lists TDA7342 audio mux, TDA7385 amp, TEF6606T tuner | https://github.com/tmpdo/tiggo_mmcu | LOW |

## 3. Open questions (and non-invasive ways to resolve them)

- **SoC / CPU / GPU / RAM / storage / OS / kernel**: photograph Settings > About (system, software, MCU and kernel version strings) on the actual car. Do not use hidden engineering menus or factory passwords.
- **Supplier and part number**: ask the CAOA Chery dealer for the part number and supplier from the parts catalogue, or ask for photos of the unit label if the unit is ever removed by a professional for unrelated service. Do not open it ourselves.
- **Wi-Fi/BT module**: search ANATEL SCH (sistemas.anatel.gov.br/sch) by applicant "Chery", "CAOA" or a candidate supplier (Desay, Autolink/车联天下, Joyson, Hangsheng, Yuanfeng). The certificate PDFs often include internal photos and the module ID.
- **MY2026 vs MY2027 differences**: check whether the BR MY2027 20.5 in panel is the CN Tiggo 5x 高能版 / Lion 5.0 unit. Compare the About screen and the UI on both.
- **Chip for CN Lion 5.0 entry cockpit**: Chinese config sheets (autohome/dongchedi "车机智能芯片" field) for 瑞虎5x 高能版. Not found in this pass.
- **Update method and OTA**: ask the dealer whether updates are USB or OTA and whether there are campaign bulletins (recalls/TSBs) for the multimedia unit; also check the CAOA Chery owner manual PDF.
- **GPL source**: once Linux/Android is confirmed, send a written GPL source request to CAOA Chery and the supplier. Legal, and needs no access to the car.
- **Display/touch/camera interfaces, CAN path, secure boot**: only answerable from supplier documentation or certification photos. Treat secure boot as enabled; never flash firmware or bypass security.
- **Forums**: no 4pda, XDA, Reddit or Brazilian owner thread with hardware details was found. Recheck 4pda for Tiggo 4/7 Pro "штатная ГУ" and Brazilian owner groups after the About screen strings are known.
