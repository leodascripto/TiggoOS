#!/usr/bin/env bash
# Read-only development machine report. Usage: scripts/env-report.sh > research/environment/development-machine.md
set -u
export LC_ALL=C
v(){ command -v "$1" >/dev/null 2>&1 && "$@" 2>&1 | head -1 || echo "NOT INSTALLED"; }
echo "# Development Machine Report"
echo; echo "Generated: $(date -Iseconds) by scripts/env-report.sh (read-only)"
echo; echo "## System"; echo
echo "| Item | Value |"; echo "|---|---|"
echo "| OS | $(. /etc/os-release; echo "$PRETTY_NAME") |"
echo "| Kernel | $(uname -r) |"
echo "| Arch | $(uname -m) |"
echo "| CPU | $(lscpu | awk -F: '/Model name/{gsub(/^ +/,"",$2);print $2;exit}') |"
echo "| Cores/Threads | $(lscpu | awk -F: '/^Core\(s\) per socket/{c=$2}/^Socket\(s\)/{s=$2}END{gsub(/ /,"",c);gsub(/ /,"",s);print c*s}') / $(nproc) |"
echo "| Virtualization | $(lscpu | awk -F: '/Virtualization/{gsub(/^ +/,"",$2);print $2;exit}') |"
echo "| RAM | $(free -h | awk '/Mem:/{print $2" total, "$7" available"}') |"
echo "| Swap | $(free -h | awk '/Swap:/{print $2}') |"
echo "| GPU | $(lspci 2>/dev/null | grep -iE 'vga|3d|display' | sed 's/^[^:]*: //' | paste -sd';') |"
echo; echo "## Storage"; echo; echo '```'
df -h --output=size,used,avail,pcent -x tmpfs -x devtmpfs -x squashfs -x efivarfs 2>/dev/null
echo; lsblk -d -o NAME,SIZE,ROTA,MODEL 2>/dev/null | grep -v loop
echo '```'
echo; echo "## Tools"; echo
echo "| Tool | Version |"; echo "|---|---|"
for t in git python3 gcc g++ cmake make ninja repo docker podman qemu-system-aarch64 chrpath diffstat gawk lz4 zstd; do
  case $t in python3) r=$(v python3 --version);; make|gcc|g++|cmake|ninja|git|gawk|zstd) r=$(v $t --version);; docker|podman) r=$(v $t --version);; qemu-system-aarch64) r=$(v $t --version);; *) command -v $t >/dev/null && r="present ($(command -v $t))" || r="NOT INSTALLED";; esac
  echo "| $t | $r |"
done
echo; echo "## Container access"; echo
id -nG | grep -qw docker && echo "- docker group: yes" || echo "- docker group: no"
systemctl is-active docker >/dev/null 2>&1 && echo "- docker service: active" || echo "- docker service: inactive/absent"
echo "- Locale: $(locale 2>/dev/null | awk -F= '/LANG=/{print $2}')"
cat <<'NOTES'

## Build capacity assessment (manual notes, kept by the script)

| Requirement (Yocto, per official system requirements) | This machine | Status |
|---|---|---|
| >= 90 GB free disk per build dir | NVMe: ~51 GB free; secondary HDD (ext4): ~348 GB free | Only the HDD fits; HDD is rotational, builds will be I/O bound |
| >= 8 GB RAM (32 GB recommended for parallel builds) | 31 GiB | OK |
| Supported host distro | Pop!_OS 22.04 (Ubuntu 22.04 base) | Check per Yocto release; use a container (Podman/CROPS) to avoid host drift |
| Host packages (gawk, chrpath, diffstat, lz4, repo...) | Several missing | Install only after approval, or inside a container |

Estimates (LOW confidence, to be refined): first full AGL/Yocto image on 4C/8T + HDD: roughly 6-12 h CPU-bound, 60-120 GB disk incl. downloads and sstate.

Constraint: host-specific limits (other workloads, schedules) are kept in the untracked CLAUDE.local.md.
NOTES
