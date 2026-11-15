# Development Machine Report

Generated: 2026-11-15T18:25:43-03:00 by scripts/env-report.sh (read-only)

## System

| Item | Value |
|---|---|
| OS | Pop!_OS 22.04 LTS |
| Kernel | 7.2.15-76070215-generic |
| Arch | x86_64 |
| CPU | 11th Gen Intel(R) Core(TM) i5-1135G7 @ 2.40GHz |
| Cores/Threads | 4 / 8 |
| Virtualization | VT-x |
| RAM | 31Gi total, 17Gi available |
| Swap | 19Gi |
| GPU | 00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT2 [Iris Xe Graphics] (rev 01) |

## Storage

```
 Size  Used Avail Use%
 225G  161G   53G  76%
 4.0G  2.6G  1.5G  64%
1020M  340M  681M  34%
 449G   78G  348G  19%

NAME      SIZE ROTA MODEL
sda     465.8G    1 WDC WD5000LPVX-22V0TT0
zram0      16G    0 
nvme0n1 238.5G    0 SN530 SDBPNPZ-256G-1004
```

## Tools

| Tool | Version |
|---|---|
| git | git version 2.34.1 |
| python3 | Python 3.10.12 |
| gcc | gcc (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0 |
| g++ | g++ (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0 |
| cmake | cmake version 3.22.1 |
| make | GNU Make 4.3 |
| ninja | NOT INSTALLED |
| repo | NOT INSTALLED |
| docker | NOT INSTALLED |
| podman | NOT INSTALLED |
| qemu-system-aarch64 | NOT INSTALLED |
| chrpath | NOT INSTALLED |
| diffstat | NOT INSTALLED |
| gawk | NOT INSTALLED |
| lz4 | NOT INSTALLED |
| zstd | *** zstd command line interface 64-bits v1.4.8, by Yann Collet *** |

## Container access

- docker group: no
- docker service: inactive/absent
- Locale: pt_BR.UTF-8

## Build capacity assessment (manual notes, kept by the script)

| Requirement (Yocto, per official system requirements) | This machine | Status |
|---|---|---|
| >= 90 GB free disk per build dir | NVMe: ~51 GB free; secondary HDD (ext4): ~348 GB free | Only the HDD fits; HDD is rotational, builds will be I/O bound |
| >= 8 GB RAM (32 GB recommended for parallel builds) | 31 GiB | OK |
| Supported host distro | Pop!_OS 22.04 (Ubuntu 22.04 base) | Check per Yocto release; use a container (Podman/CROPS) to avoid host drift |
| Host packages (gawk, chrpath, diffstat, lz4, repo...) | Several missing | Install only after approval, or inside a container |

Estimates (LOW confidence, to be refined): first full AGL/Yocto image on 4C/8T + HDD: roughly 6-12 h CPU-bound, 60-120 GB disk incl. downloads and sstate.

Constraint: host-specific limits (other workloads, schedules) are kept in the untracked CLAUDE.local.md.
